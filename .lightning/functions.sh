#### This file was built by lightning. ####
#LBIN_PATH="$PWD/bin/" #only use for development
LBIN_PATH=""
 lightning-reload() {
  lightning install $@
  source_file=$(lightning source_file)
  source $source_file
  echo Loaded $source_file
}


e-wd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-wd $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-wd" e-wd

g-r9 () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-r9 $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-r9" g-r9

#open a gem's documentation in a browser
o-gd19 () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate o-gd19 $@) )
  open "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete o-gd19" o-gd19

g-r () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-r $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-r" g-r

e-c () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-c $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-c" e-c

ls-g () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-g $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-g" ls-g

#open gem's doc in browser
o-gd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate o-gd $@) )
  open "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete o-gd" o-gd

l-n () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-n $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-n" l-n

tt () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate tt $@) )
  testrb "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete tt" tt

e-ror () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-ror $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-ror" e-ror

v-rt () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-rt $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-rt" v-rt

pb-g () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate pb-g $@) )
  echo -n "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete pb-g" pb-g

cp-w () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cp-w $@) )
  cp "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cp-w" cp-w

v-w () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-w $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-w" v-w

e-w () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-w $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-w" e-w

v-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-rb $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-rb" v-rb

cd-r () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-r $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-r" cd-r

v-g () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-g $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-g" v-g

g-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-rb $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-rb" g-rb

cd-r9 () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-r9 $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-r9" cd-r9

ls-wd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-wd $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-wd" ls-wd

cp-g () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cp-g $@) )
  cp "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cp-g" cp-g

g-w () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-w $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-w" g-w

l-r () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-r $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-r" l-r

m-r () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-r $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-r" m-r

e-r9 () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-r9 $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-r9" e-r9

l-r9 () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-r9 $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-r9" l-r9

c () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate c $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete c" c

cd-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-rb $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-rb" cd-rb

g-g () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-g $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-g" g-g

l-b () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-b $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-b" l-b

ba () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ba $@) )
  bacon -Ilib "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ba" ba

cd-w () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-w $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-w" cd-w

cp-r9 () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cp-r9 $@) )
  cp "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cp-r9" cp-r9

e-rt () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-rt $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-rt" e-rt

l-rlp () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-rlp $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-rlp" l-rlp

l-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-rb $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-rb" l-rb

ls-r9 () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-r9 $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-r9" ls-r9

cd-cw () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-cw $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-cw" cd-cw

m-c () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-c $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-c" m-c

e-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-rb $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-rb" e-rb

l-w () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-w $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-w" l-w

g-ror () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-ror $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-ror" g-ror

e-cw () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-cw $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-cw" e-cw

cd-g () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-g $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-g" cd-g

e-rlp () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-rlp $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-rlp" e-rlp

l-cw () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-cw $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-cw" l-cw

m-w () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-w $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-w" m-w

v-n () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-n $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-n" v-n

oa () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate oa $@) )
  open -a "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete oa" oa

ls-r () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-r $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-r" ls-r

m-r9 () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-r9 $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-r9" m-r9

cp-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cp-rb $@) )
  cp "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cp-rb" cp-rb

l-g () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-g $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-g" l-g

v-ror () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-ror $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-ror" v-ror

git-w () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate git-w $@) )
  git "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete git-w" git-w

#access ri documentation limited to this gem
ri-gd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ri-gd $@) )
  ri --no-standard-docs -d "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ri-gd" ri-gd

m-g () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-g $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-g" m-g

ls-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-rb $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-rb" ls-rb

git-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate git-rb $@) )
  git "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete git-rb" git-rb

v-r () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-r $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-r" v-r

m-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-rb $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-rb" m-rb

cp-r () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cp-r $@) )
  cp "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cp-r" cp-r

ls-w () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-w $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-w" ls-w

e-r () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-r $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-r" e-r

cd-wd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-wd $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-wd" cd-wd

m-cw () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-cw $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-cw" m-cw

v-r9 () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-r9 $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-r9" v-r9
