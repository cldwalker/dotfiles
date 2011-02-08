#### This file was built by lightning. ####
#LBIN_PATH="$PWD/bin/" #only use for development
LBIN_PATH=""

lightning-reload() {
  lightning install $@
  source_file=$(lightning source_file)
  source $source_file
  echo Loaded $source_file
}


m-js () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-js $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-js" m-js

g-r () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-r $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-r" g-r

v-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-rb $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-rb" v-rb

g-r9 () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-r9 $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-r9" g-r9

e-ft () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-ft $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-ft" e-ft

m-pd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-pd $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-pd" m-pd

ls-wd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-wd $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-wd" ls-wd

g-pp () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-pp $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-pp" g-pp

cd-r9 () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-r9 $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-r9" cd-r9

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

cp-c () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cp-c $@) )
  cp "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cp-c" cp-c

tb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate tb $@) )
  testrb "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete tb" tb

l-n () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-n $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-n" l-n

cd-pp () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-pp $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-pp" cd-pp

e-ror () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-ror $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-ror" e-ror

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

v-js () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-js $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-js" v-js

o-gd19 () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate o-gd19 $@) )
  open "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete o-gd19" o-gd19

e-wd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-wd $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-wd" e-wd

l-r9 () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-r9 $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-r9" l-r9

m-ft () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-ft $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-ft" m-ft

e-w () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-w $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-w" e-w

v-pd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-pd $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-pd" v-pd

o-gd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate o-gd $@) )
  open "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete o-gd" o-gd

cd-r () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-r $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-r" cd-r

l-pp () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-pp $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-pp" l-pp

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

m-lg () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-lg $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-lg" m-lg

l-r () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-r $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-r" l-r

e-g () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-g $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-g" e-g

cp-g () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cp-g $@) )
  cp "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cp-g" cp-g

cd-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-rb $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-rb" cd-rb

g-w () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-w $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-w" g-w

m-r () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-r $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-r" m-r

cp-r9 () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cp-r9 $@) )
  cp "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cp-r9" cp-r9

v-ft () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-ft $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-ft" v-ft

sp () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate sp $@) )
  spec "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete sp" sp

g-js () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-js $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-js" g-js

cd-cw () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-cw $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-cw" cd-cw

cp-pp () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cp-pp $@) )
  cp "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cp-pp" cp-pp

l-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-rb $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-rb" l-rb

g-pd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-pd $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-pd" g-pd

ls-r9 () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-r9 $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-r9" ls-r9

c () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate c $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete c" c

v-lg () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-lg $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-lg" v-lg

cd-js () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-js $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-js" cd-js

l-b () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-b $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-b" l-b

l-cw () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-cw $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-cw" l-cw

ls-pp () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-pp $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-pp" ls-pp

g-ror () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-ror $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-ror" g-ror

g-g () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-g $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-g" g-g

ba () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ba $@) )
  bacon -Ilib -I. "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ba" ba

e-r9 () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-r9 $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-r9" e-r9

cd-pd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-pd $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-pd" cd-pd

cd-w () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-w $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-w" cd-w

l-js () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-js $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-js" l-js

e-pp () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-pp $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-pp" e-pp

v-ror () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-ror $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-ror" v-ror

l-rlp () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-rlp $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-rlp" l-rlp

cp-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cp-rb $@) )
  cp "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cp-rb" cp-rb

rsp () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate rsp $@) )
  rspec "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete rsp" rsp

m-c () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-c $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-c" m-c

g-ft () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-ft $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-ft" g-ft

l-pd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-pd $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-pd" l-pd

l-w () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-w $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-w" l-w

git-w () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate git-w $@) )
  git "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete git-w" git-w

cd-ft () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-ft $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-ft" cd-ft

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

ls-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-rb $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-rb" ls-rb

v-n () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-n $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-n" v-n

m-w () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-w $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-w" m-w

ls-r () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-r $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-r" ls-r

oa () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate oa $@) )
  open -a "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete oa" oa

m-r9 () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-r9 $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-r9" m-r9

cp-js () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cp-js $@) )
  cp "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cp-js" cp-js

m-pp () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-pp $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-pp" m-pp

l-g () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-g $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-g" l-g

l-ft () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-ft $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-ft" l-ft

e-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-rb $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-rb" e-rb

e-rt () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-rt $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-rt" e-rt

cp-pd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cp-pd $@) )
  cp "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cp-pd" cp-pd

ls-js () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-js $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-js" ls-js

e-cw () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-cw $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-cw" e-cw

cd-wd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-wd $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-wd" cd-wd

m-g () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-g $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-g" m-g

v-r9 () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-r9 $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-r9" v-r9

ls-pd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-pd $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-pd" ls-pd

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

v-pp () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-pp $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-pp" v-pp

e-js () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-js $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-js" e-js

cp-r () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cp-r $@) )
  cp "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cp-r" cp-r

m-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-rb $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-rb" m-rb

e-pd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-pd $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-pd" e-pd

cp-ft () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cp-ft $@) )
  cp "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cp-ft" cp-ft

ri-gd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ri-gd $@) )
  ri --no-standard-docs -d "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ri-gd" ri-gd

e-r () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-r $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-r" e-r

m-cw () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-cw $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-cw" m-cw

ls-w () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-w $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-w" ls-w

ls-ft () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-ft $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-ft" ls-ft

cuc () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cuc $@) )
  cucumber "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cuc" cuc

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
