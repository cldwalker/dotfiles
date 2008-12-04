/*
"window" to "window.content.document.window"
and replace "document" to "window.content.document"
*/
hello = function () {
  alert("Hello world");
}

qurl = function() {
   new_url = content.location.href;
   if (content.location.href.indexOf('ac:3001') != -1) {
      new_url = new_url.replace('ac:3001','.ac');
   }
   else {
     new_url = new_url.replace('.ac', 'ac:3001');
   }
  content.location.href = new_url;
}

furl = function(site, convert) {
  var new_url = content.location.href;
  if (site != undefined) {
    var sites = ['funnyordie.com', 'shredordie.com', 'pwnordie.com', 'eatdrinkordie.com', 'morraderir.com.br'];
    var siteregex = new RegExp('(' + sites.join('|') + ')');
    new_url = new_url.replace(siteregex ,site);
  }
  if ((site == undefined) || (convert != undefined)) {
    if (content.location.href.indexOf('localhost:3000') != -1) {
      new_url = new_url.replace('.localhost:3000','');
    }
    else {
      new_url = new_url.replace(/(.com(.br)?)/,'$1.localhost:3000');
    }
  }
  content.location.href = new_url;
}

uncheckall =  function () {
	var ins = content.document.getElementsByTagName('input');
	for (var i=0; i<ins.length; i++) {
		if (ins[i].getAttribute('type') == 'checkbox') ins[i].checked = false;
	}
}

show_nofollow = function(){
	var a,b,c,fs,e,f,g,h,i;
	a=content.document.getElementsByTagName("a");for(b=0;b<a.length;b++){c=a[b];fs=c.attributes;g=false;h=false;for(e=0;e<fs.length;e++){f=fs[e];i=f.name.toLowerCase();if(i=="rel"&&f.value.toLowerCase().indexOf("nofollow")!=-1){g=true;}if(i=="href"){h=true;}}if(h){c.style.backgroundColor=g?"yellow":"pink";c.style.border="1px%20solid%20"+(g?"red":"black");c.style.color="black";}}
}

// inc + dec thanks to https://www.squarefree.com/bookmarklets/misc.html
inc = function(){ var e,s; IB=1; function isDigit(c) { return ("0" <= c && c <= "9") } L
= content.location.href; LL = L.length; for (e=LL-1; e>=0; --e) if (isDigit(L.charAt(e))) { for(s=e-1; s>=0;
--s) if (!isDigit(L.charAt(s))) break; break; } ++s; if (e<0) return; oldNum = L.substring(s,e+1);
newNum = "" + (parseInt(oldNum,10) + IB); while (newNum.length < oldNum.length) newNum = "0" +
newNum; content.location.href = L.substring(0,s) + newNum + L.slice(e+1); 
}

dec = function(){ var e,s; IB=-1; function isDigit(c) { return ("0" <= c && c <= "9") }
L = content.location.href; LL = L.length; for (e=LL-1; e>=0; --e) if (isDigit(L.charAt(e))) { for(s=e-1;
s>=0; --s) if (!isDigit(L.charAt(s))) break; break; } ++s; if (e<0) return; oldNum =
L.substring(s,e+1); newNum = "" + (parseInt(oldNum,10) + IB); while (newNum.length < oldNum.length)
newNum = "0" + newNum; content.location.href = L.substring(0,s) + newNum + L.slice(e+1); 
}

// thanks to https://www.squarefree.com/bookmarklets/validation.html
linearize = function(){var
D=content.document,e,styles="table,thead,tbody,tr,th,td{display:block!important;}*{width:auto!important;height:auto!important;position:static!important;float:none!important;margin-left:0!important;margin-right:0!important;}%20img,iframe,embed,object{display:none;}%20body%20{margin:4px!important;}";
e=D.createElement('link'); e.rel='stylesheet'; e.href=window.opera ? "javascript:'"+styles+"'" :
"data:text/css,"+styles; D.getElementsByTagName("head")[0].appendChild(e)
}

// thanks to https://www.squarefree.com/bookmarklets/zap.html
zap_style = function(){var i,x;for(i=0;x=content.document.styleSheets[i];++i)x.disabled=true;}

zap_plugins = function(){
	function R(w){try{var
	d=w.content.document,j,i,t,T,N,b,r=1,C;for(j=0;t=["object","embed","applet","iframe"][j];++j){T=d.getElementsByTagName(t);for(i=T.length-1;(i+1)&&(N=T[i]);--i)if(j!=3||!R((C=N.contentWindow)?C:N.contentDocument.defaultView)){b=d.createElement("div");b.style.width=N.width;b.style.height=N.height;b.innerHTML="<del>"+(j==3?"third-party%20"+t:t)+"</del>";N.parentNode.replaceChild(b,N);}}}catch(E){r=0}return
	r}R(self);var i,x;for(i=0;x=frames[i];++i)R(x)
}

/* doesn't work 
neither did chcount,links, https://www.squarefree.com/bookmarklets/webdevel.html#view_variables
*/
resize = function() {
if (content.document.createElement){
  void(pstTagName='%s');
  void(head=content.document.getElementsByTagName('head').item(0));
  void(script=content.document.createElement('script'));
  void(script.src='http://javascript.gibney.org/resizer.js');
  void(script.type='text/javascript');
  void(head.appendChild(script));
}
}

forms = function() {
	var message='';
	for(x=0;x<content.document.forms.length;x++){
	  var name=content.document.forms[x].name;
	  message+='form '+x+': ';
	  message+=(name.length==0)?'no name':name;
	  message+=" with action ";
	  message+="'"+content.document.forms[x].action+"'";
	  message+="\n";
	}
	alert(message);
}
