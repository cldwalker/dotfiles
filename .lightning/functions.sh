#### This file was built by lightning. ####
#LBIN_PATH="$PWD/bin/" #only use for development
LBIN_PATH=""
 lightning-reload() {
  lightning install $@
  source_file=$(lightning source_file)
  source $source_file
  echo Loaded $source_file
}


oa () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate oa $@) )
  open -a "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete oa" oa

#my code directories
c () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate c $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete c" c

m-rd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-rd $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-rd" m-rd

v-rd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-rd $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-rd" v-rd

o-rd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate o-rd $@) )
  open "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete o-rd" o-rd

l-rd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-rd $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-rd" l-rd

g-rd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-rd $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-rd" g-rd

gi-rd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate gi-rd $@) )
  git "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete gi-rd" gi-rd

e-rd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-rd $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-rd" e-rd

cd-rd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-rd $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-rd" cd-rd

ls-rd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-rd $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-rd" ls-rd

cp-rd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cp-rd $@) )
  cp "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cp-rd" cp-rd

m-w () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-w $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-w" m-w

v-w () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-w $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-w" v-w

o-w () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate o-w $@) )
  open "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete o-w" o-w

l-w () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-w $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-w" l-w

g-w () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-w $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-w" g-w

gi-w () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate gi-w $@) )
  git "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete gi-w" gi-w

e-w () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-w $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-w" e-w

cd-w () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-w $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-w" cd-w

ls-w () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-w $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-w" ls-w

cp-w () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cp-w $@) )
  cp "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cp-w" cp-w

#base directory of a ruby gem project
m-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-rb $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-rb" m-rb

#base directory of a ruby gem project
v-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-rb $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-rb" v-rb

#base directory of a ruby gem project
o-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate o-rb $@) )
  open "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete o-rb" o-rb

#base directory of a ruby gem project
l-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-rb $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-rb" l-rb

#base directory of a ruby gem project
g-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-rb $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-rb" g-rb

#base directory of a ruby gem project
gi-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate gi-rb $@) )
  git "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete gi-rb" gi-rb

#base directory of a ruby gem project
e-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-rb $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-rb" e-rb

#base directory of a ruby gem project
cd-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-rb $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-rb" cd-rb

#base directory of a ruby gem project
ls-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-rb $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-rb" ls-rb

#base directory of a ruby gem project
cp-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cp-rb $@) )
  cp "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cp-rb" cp-rb

#base directory of a ruby gem project
ba () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ba $@) )
  bacon -Ilib "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ba" ba

#base directory of a ruby gem project
tt () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate tt $@) )
  testrb "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete tt" tt

#base directory of a ruby gem project
sp () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate sp $@) )
  spec "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete sp" sp

pb-g () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate pb-g $@) )
  echo -n "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete pb-g" pb-g

m-g () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-g $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-g" m-g

v-g () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-g $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-g" v-g

o-g () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate o-g $@) )
  open "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete o-g" o-g

l-g () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-g $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-g" l-g

g-g () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-g $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-g" g-g

gi-g () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate gi-g $@) )
  git "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete gi-g" gi-g

cd-g () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-g $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-g" cd-g

ls-g () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-g $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-g" ls-g

cp-g () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cp-g $@) )
  cp "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cp-g" cp-g

m-cw () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-cw $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-cw" m-cw

v-cw () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-cw $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-cw" v-cw

o-cw () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate o-cw $@) )
  open "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete o-cw" o-cw

l-cw () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-cw $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-cw" l-cw

g-cw () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-cw $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-cw" g-cw

gi-cw () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate gi-cw $@) )
  git "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete gi-cw" gi-cw

e-cw () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-cw $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-cw" e-cw

cd-cw () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-cw $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-cw" cd-cw

ls-cw () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-cw $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-cw" ls-cw

cp-cw () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cp-cw $@) )
  cp "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cp-cw" cp-cw

m-n () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-n $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-n" m-n

v-n () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-n $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-n" v-n

o-n () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate o-n $@) )
  open "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete o-n" o-n

l-n () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-n $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-n" l-n

g-n () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-n $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-n" g-n

gi-n () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate gi-n $@) )
  git "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete gi-n" gi-n

e-n () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-n $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-n" e-n

cd-n () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-n $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-n" cd-n

ls-n () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-n $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-n" ls-n

cp-n () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cp-n $@) )
  cp "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cp-n" cp-n

m-wd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-wd $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-wd" m-wd

v-wd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-wd $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-wd" v-wd

o-wd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate o-wd $@) )
  open "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete o-wd" o-wd

l-wd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-wd $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-wd" l-wd

g-wd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-wd $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-wd" g-wd

gi-wd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate gi-wd $@) )
  git "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete gi-wd" gi-wd

e-wd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-wd $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-wd" e-wd

cd-wd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-wd $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-wd" cd-wd

ls-wd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-wd $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-wd" ls-wd

cp-wd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cp-wd $@) )
  cp "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cp-wd" cp-wd

m-b () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-b $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-b" m-b

v-b () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-b $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-b" v-b

o-b () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate o-b $@) )
  open "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete o-b" o-b

l-b () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-b $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-b" l-b

g-b () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-b $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-b" g-b

gi-b () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate gi-b $@) )
  git "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete gi-b" gi-b

e-b () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-b $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-b" e-b

cd-b () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-b $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-b" cd-b

ls-b () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-b $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-b" ls-b

cp-b () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cp-b $@) )
  cp "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cp-b" cp-b

#open gem's doc in browser
o-gd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate o-gd $@) )
  open "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete o-gd" o-gd

#access ri documentation limited to this gem
ri-gd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ri-gd $@) )
  ri --no-standard-docs -d "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ri-gd" ri-gd

m-r9 () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-r9 $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-r9" m-r9

v-r9 () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-r9 $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-r9" v-r9

o-r9 () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate o-r9 $@) )
  open "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete o-r9" o-r9

l-r9 () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-r9 $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-r9" l-r9

g-r9 () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-r9 $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-r9" g-r9

gi-r9 () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate gi-r9 $@) )
  git "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete gi-r9" gi-r9

e-r9 () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-r9 $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-r9" e-r9

cd-r9 () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-r9 $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-r9" cd-r9

ls-r9 () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-r9 $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-r9" ls-r9

cp-r9 () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cp-r9 $@) )
  cp "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cp-r9" cp-r9

#access any files from the root of a rails project
m-ror () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-ror $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-ror" m-ror

#access any files from the root of a rails project
v-ror () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-ror $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-ror" v-ror

#access any files from the root of a rails project
o-ror () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate o-ror $@) )
  open "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete o-ror" o-ror

#access any files from the root of a rails project
l-ror () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-ror $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-ror" l-ror

#access any files from the root of a rails project
g-ror () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-ror $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-ror" g-ror

#access any files from the root of a rails project
gi-ror () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate gi-ror $@) )
  git "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete gi-ror" gi-ror

#access any files from the root of a rails project
e-ror () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-ror $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-ror" e-ror

#access any files from the root of a rails project
cd-ror () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-ror $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-ror" cd-ror

#access any files from the root of a rails project
ls-ror () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-ror $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-ror" ls-ror

#access any files from the root of a rails project
cp-ror () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cp-ror $@) )
  cp "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cp-ror" cp-ror

m-r () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-r $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-r" m-r

v-r () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-r $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-r" v-r

o-r () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate o-r $@) )
  open "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete o-r" o-r

l-r () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-r $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-r" l-r

g-r () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-r $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-r" g-r

gi-r () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate gi-r $@) )
  git "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete gi-r" gi-r

e-r () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-r $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-r" e-r

cd-r () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-r $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-r" cd-r

ls-r () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-r $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-r" ls-r

cp-r () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cp-r $@) )
  cp "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cp-r" cp-r
