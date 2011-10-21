#### This file was built by lightning. ####
#LBIN_PATH="$PWD/bin/" #only use for development
LBIN_PATH=""

lightning-reload() {
  lightning install $@
  source_file=$(lightning source_file)
  source $source_file
  echo Loaded $source_file
}


cd-pd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-pd $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-pd" cd-pd

cp-pd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cp-pd $@) )
  cp "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cp-pd" cp-pd

g-pd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-pd $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-pd" g-pd

v-pd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-pd $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-pd" v-pd

ls-pd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-pd $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-pd" ls-pd

l-pd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-pd $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-pd" l-pd

e-pd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-pd $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-pd" e-pd

m-pd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-pd $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-pd" m-pd

e-ror () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-ror $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-ror" e-ror

g-ror () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-ror $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-ror" g-ror

v-ror () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-ror $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-ror" v-ror

ba () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ba $@) )
  bacon -Ilib -I. "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ba" ba

tb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate tb $@) )
  testrb "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete tb" tb

sp () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate sp $@) )
  rspec "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete sp" sp

e-rt () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-rt $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-rt" e-rt

v-rt () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-rt $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-rt" v-rt

cuc () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cuc $@) )
  cucumber "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cuc" cuc

cd-ft () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-ft $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-ft" cd-ft

cp-ft () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cp-ft $@) )
  cp "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cp-ft" cp-ft

g-ft () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-ft $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-ft" g-ft

v-ft () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-ft $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-ft" v-ft

ls-ft () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-ft $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-ft" ls-ft

l-ft () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-ft $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-ft" l-ft

e-ft () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-ft $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-ft" e-ft

m-ft () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-ft $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-ft" m-ft

oa () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate oa $@) )
  open -a "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete oa" oa

cd-pp () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-pp $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-pp" cd-pp

cp-pp () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cp-pp $@) )
  cp "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cp-pp" cp-pp

g-pp () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-pp $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-pp" g-pp

v-pp () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-pp $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-pp" v-pp

ls-pp () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-pp $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-pp" ls-pp

l-pp () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-pp $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-pp" l-pp

e-pp () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-pp $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-pp" e-pp

m-pp () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-pp $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-pp" m-pp

c () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate c $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete c" c

cp-c () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cp-c $@) )
  cp "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cp-c" cp-c

m-c () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-c $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-c" m-c

e-c () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-c $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-c" e-c

l-rlp () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-rlp $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-rlp" l-rlp

e-rlp () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-rlp $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-rlp" e-rlp

v-rlp () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-rlp $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-rlp" v-rlp

cd-rld () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-rld $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-rld" cd-rld

git-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate git-rb $@) )
  git "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete git-rb" git-rb

cd-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-rb $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-rb" cd-rb

cp-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cp-rb $@) )
  cp "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cp-rb" cp-rb

g-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-rb $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-rb" g-rb

v-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-rb $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-rb" v-rb

ls-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-rb $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-rb" ls-rb

l-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-rb $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-rb" l-rb

e-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-rb $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-rb" e-rb

m-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-rb $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-rb" m-rb

git-w () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate git-w $@) )
  git "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete git-w" git-w

cd-w () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-w $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-w" cd-w

cp-w () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cp-w $@) )
  cp "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cp-w" cp-w

g-w () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-w $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-w" g-w

v-w () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-w $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-w" v-w

ls-w () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-w $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-w" ls-w

l-w () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-w $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-w" l-w

e-w () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-w $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-w" e-w

m-w () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-w $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-w" m-w

e-cw () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-cw $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-cw" e-cw

m-cw () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-cw $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-cw" m-cw

cd-cw () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-cw $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-cw" cd-cw

l-cw () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-cw $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-cw" l-cw

v-n () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-n $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-n" v-n

l-n () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-n $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-n" l-n

ls-wd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-wd $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-wd" ls-wd

cd-wd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-wd $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-wd" cd-wd

e-wd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-wd $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-wd" e-wd

l-b () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-b $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-b" l-b

cd-system_ruby () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-system_ruby $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-system_ruby" cd-system_ruby

cp-system_ruby () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cp-system_ruby $@) )
  cp "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cp-system_ruby" cp-system_ruby

g-system_ruby () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-system_ruby $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-system_ruby" g-system_ruby

v-system_ruby () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-system_ruby $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-system_ruby" v-system_ruby

ls-system_ruby () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-system_ruby $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-system_ruby" ls-system_ruby

l-system_ruby () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-system_ruby $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-system_ruby" l-system_ruby

e-system_ruby () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-system_ruby $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-system_ruby" e-system_ruby

m-system_ruby () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-system_ruby $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-system_ruby" m-system_ruby

o-gd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate o-gd $@) )
  open "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete o-gd" o-gd

ri-gd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ri-gd $@) )
  ri --no-standard-docs -d "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ri-gd" ri-gd

v-lg () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-lg $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-lg" v-lg

m-lg () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-lg $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-lg" m-lg

cd-js () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-js $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-js" cd-js

cp-js () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cp-js $@) )
  cp "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cp-js" cp-js

g-js () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-js $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-js" g-js

v-js () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-js $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-js" v-js

ls-js () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-js $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-js" ls-js

l-js () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-js $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-js" l-js

e-js () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-js $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-js" e-js

m-js () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-js $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-js" m-js

pb-g () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate pb-g $@) )
  echo -n "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete pb-g" pb-g

cd-g () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-g $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-g" cd-g

cp-g () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cp-g $@) )
  cp "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cp-g" cp-g

g-g () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-g $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-g" g-g

v-g () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-g $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-g" v-g

ls-g () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-g $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-g" ls-g

l-g () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-g $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-g" l-g

e-g () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-g $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-g" e-g

m-g () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-g $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-g" m-g

cd-gg () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-gg $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-gg" cd-gg

cp-gg () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cp-gg $@) )
  cp "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cp-gg" cp-gg

g-gg () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-gg $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-gg" g-gg

v-gg () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-gg $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-gg" v-gg

ls-gg () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-gg $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-gg" ls-gg

l-gg () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-gg $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-gg" l-gg

e-gg () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-gg $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-gg" e-gg

m-gg () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-gg $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-gg" m-gg

cd-r () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-r $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-r" cd-r

cp-r () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cp-r $@) )
  cp "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cp-r" cp-r

g-r () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-r $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-r" g-r

v-r () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-r $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-r" v-r

ls-r () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-r $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-r" ls-r

l-r () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-r $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-r" l-r

e-r () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-r $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-r" e-r

m-r () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-r $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-r" m-r

cd-rc () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-rc $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-rc" cd-rc

cp-rc () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cp-rc $@) )
  cp "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cp-rc" cp-rc

g-rc () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-rc $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-rc" g-rc

v-rc () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-rc $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-rc" v-rc

ls-rc () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-rc $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-rc" ls-rc

l-rc () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-rc $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-rc" l-rc

e-rc () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-rc $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-rc" e-rc

m-rc () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-rc $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-rc" m-rc
