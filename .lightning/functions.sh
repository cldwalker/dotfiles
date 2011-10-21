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
  local arr
  arr=( $(${LBIN_PATH}lightning-translate cd-pd $@) )
  cd "${arr[@]}"
}
_cd-pd () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete cd-pd "${@}") )
}
compctl -QK _cd-pd cd-pd

cp-pd () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate cp-pd $@) )
  cp "${arr[@]}"
}
_cp-pd () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete cp-pd "${@}") )
}
compctl -QK _cp-pd cp-pd

g-pd () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate g-pd $@) )
  grep "${arr[@]}"
}
_g-pd () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete g-pd "${@}") )
}
compctl -QK _g-pd g-pd

v-pd () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate v-pd $@) )
  vim "${arr[@]}"
}
_v-pd () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete v-pd "${@}") )
}
compctl -QK _v-pd v-pd

ls-pd () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate ls-pd $@) )
  ls "${arr[@]}"
}
_ls-pd () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete ls-pd "${@}") )
}
compctl -QK _ls-pd ls-pd

l-pd () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate l-pd $@) )
  less "${arr[@]}"
}
_l-pd () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete l-pd "${@}") )
}
compctl -QK _l-pd l-pd

e-pd () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate e-pd $@) )
  echo "${arr[@]}"
}
_e-pd () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete e-pd "${@}") )
}
compctl -QK _e-pd e-pd

m-pd () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate m-pd $@) )
  mate "${arr[@]}"
}
_m-pd () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete m-pd "${@}") )
}
compctl -QK _m-pd m-pd

e-ror () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate e-ror $@) )
  echo "${arr[@]}"
}
_e-ror () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete e-ror "${@}") )
}
compctl -QK _e-ror e-ror

g-ror () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate g-ror $@) )
  grep "${arr[@]}"
}
_g-ror () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete g-ror "${@}") )
}
compctl -QK _g-ror g-ror

v-ror () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate v-ror $@) )
  vim "${arr[@]}"
}
_v-ror () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete v-ror "${@}") )
}
compctl -QK _v-ror v-ror

ba () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate ba $@) )
  bacon -Ilib -I. "${arr[@]}"
}
_ba () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete ba "${@}") )
}
compctl -QK _ba ba

tb () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate tb $@) )
  testrb "${arr[@]}"
}
_tb () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete tb "${@}") )
}
compctl -QK _tb tb

sp () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate sp $@) )
  rspec "${arr[@]}"
}
_sp () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete sp "${@}") )
}
compctl -QK _sp sp

e-rt () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate e-rt $@) )
  echo "${arr[@]}"
}
_e-rt () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete e-rt "${@}") )
}
compctl -QK _e-rt e-rt

v-rt () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate v-rt $@) )
  vim "${arr[@]}"
}
_v-rt () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete v-rt "${@}") )
}
compctl -QK _v-rt v-rt

cuc () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate cuc $@) )
  cucumber "${arr[@]}"
}
_cuc () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete cuc "${@}") )
}
compctl -QK _cuc cuc

cd-ft () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate cd-ft $@) )
  cd "${arr[@]}"
}
_cd-ft () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete cd-ft "${@}") )
}
compctl -QK _cd-ft cd-ft

cp-ft () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate cp-ft $@) )
  cp "${arr[@]}"
}
_cp-ft () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete cp-ft "${@}") )
}
compctl -QK _cp-ft cp-ft

g-ft () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate g-ft $@) )
  grep "${arr[@]}"
}
_g-ft () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete g-ft "${@}") )
}
compctl -QK _g-ft g-ft

v-ft () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate v-ft $@) )
  vim "${arr[@]}"
}
_v-ft () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete v-ft "${@}") )
}
compctl -QK _v-ft v-ft

ls-ft () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate ls-ft $@) )
  ls "${arr[@]}"
}
_ls-ft () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete ls-ft "${@}") )
}
compctl -QK _ls-ft ls-ft

l-ft () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate l-ft $@) )
  less "${arr[@]}"
}
_l-ft () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete l-ft "${@}") )
}
compctl -QK _l-ft l-ft

e-ft () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate e-ft $@) )
  echo "${arr[@]}"
}
_e-ft () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete e-ft "${@}") )
}
compctl -QK _e-ft e-ft

m-ft () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate m-ft $@) )
  mate "${arr[@]}"
}
_m-ft () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete m-ft "${@}") )
}
compctl -QK _m-ft m-ft

oa () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate oa $@) )
  open -a "${arr[@]}"
}
_oa () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete oa "${@}") )
}
compctl -QK _oa oa

cd-pp () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate cd-pp $@) )
  cd "${arr[@]}"
}
_cd-pp () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete cd-pp "${@}") )
}
compctl -QK _cd-pp cd-pp

cp-pp () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate cp-pp $@) )
  cp "${arr[@]}"
}
_cp-pp () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete cp-pp "${@}") )
}
compctl -QK _cp-pp cp-pp

g-pp () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate g-pp $@) )
  grep "${arr[@]}"
}
_g-pp () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete g-pp "${@}") )
}
compctl -QK _g-pp g-pp

v-pp () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate v-pp $@) )
  vim "${arr[@]}"
}
_v-pp () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete v-pp "${@}") )
}
compctl -QK _v-pp v-pp

ls-pp () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate ls-pp $@) )
  ls "${arr[@]}"
}
_ls-pp () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete ls-pp "${@}") )
}
compctl -QK _ls-pp ls-pp

l-pp () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate l-pp $@) )
  less "${arr[@]}"
}
_l-pp () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete l-pp "${@}") )
}
compctl -QK _l-pp l-pp

e-pp () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate e-pp $@) )
  echo "${arr[@]}"
}
_e-pp () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete e-pp "${@}") )
}
compctl -QK _e-pp e-pp

m-pp () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate m-pp $@) )
  mate "${arr[@]}"
}
_m-pp () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete m-pp "${@}") )
}
compctl -QK _m-pp m-pp

c () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate c $@) )
  cd "${arr[@]}"
}
_c () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete c "${@}") )
}
compctl -QK _c c

cp-c () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate cp-c $@) )
  cp "${arr[@]}"
}
_cp-c () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete cp-c "${@}") )
}
compctl -QK _cp-c cp-c

m-c () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate m-c $@) )
  mate "${arr[@]}"
}
_m-c () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete m-c "${@}") )
}
compctl -QK _m-c m-c

e-c () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate e-c $@) )
  echo "${arr[@]}"
}
_e-c () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete e-c "${@}") )
}
compctl -QK _e-c e-c

l-rlp () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate l-rlp $@) )
  less "${arr[@]}"
}
_l-rlp () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete l-rlp "${@}") )
}
compctl -QK _l-rlp l-rlp

e-rlp () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate e-rlp $@) )
  echo "${arr[@]}"
}
_e-rlp () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete e-rlp "${@}") )
}
compctl -QK _e-rlp e-rlp

v-rlp () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate v-rlp $@) )
  vim "${arr[@]}"
}
_v-rlp () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete v-rlp "${@}") )
}
compctl -QK _v-rlp v-rlp

cd-rld () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate cd-rld $@) )
  cd "${arr[@]}"
}
_cd-rld () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete cd-rld "${@}") )
}
compctl -QK _cd-rld cd-rld

git-rb () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate git-rb $@) )
  git "${arr[@]}"
}
_git-rb () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete git-rb "${@}") )
}
compctl -QK _git-rb git-rb

cd-rb () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate cd-rb $@) )
  cd "${arr[@]}"
}
_cd-rb () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete cd-rb "${@}") )
}
compctl -QK _cd-rb cd-rb

cp-rb () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate cp-rb $@) )
  cp "${arr[@]}"
}
_cp-rb () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete cp-rb "${@}") )
}
compctl -QK _cp-rb cp-rb

g-rb () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate g-rb $@) )
  grep "${arr[@]}"
}
_g-rb () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete g-rb "${@}") )
}
compctl -QK _g-rb g-rb

v-rb () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate v-rb $@) )
  vim "${arr[@]}"
}
_v-rb () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete v-rb "${@}") )
}
compctl -QK _v-rb v-rb

ls-rb () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate ls-rb $@) )
  ls "${arr[@]}"
}
_ls-rb () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete ls-rb "${@}") )
}
compctl -QK _ls-rb ls-rb

l-rb () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate l-rb $@) )
  less "${arr[@]}"
}
_l-rb () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete l-rb "${@}") )
}
compctl -QK _l-rb l-rb

e-rb () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate e-rb $@) )
  echo "${arr[@]}"
}
_e-rb () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete e-rb "${@}") )
}
compctl -QK _e-rb e-rb

m-rb () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate m-rb $@) )
  mate "${arr[@]}"
}
_m-rb () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete m-rb "${@}") )
}
compctl -QK _m-rb m-rb

git-w () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate git-w $@) )
  git "${arr[@]}"
}
_git-w () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete git-w "${@}") )
}
compctl -QK _git-w git-w

cd-w () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate cd-w $@) )
  cd "${arr[@]}"
}
_cd-w () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete cd-w "${@}") )
}
compctl -QK _cd-w cd-w

cp-w () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate cp-w $@) )
  cp "${arr[@]}"
}
_cp-w () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete cp-w "${@}") )
}
compctl -QK _cp-w cp-w

g-w () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate g-w $@) )
  grep "${arr[@]}"
}
_g-w () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete g-w "${@}") )
}
compctl -QK _g-w g-w

v-w () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate v-w $@) )
  vim "${arr[@]}"
}
_v-w () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete v-w "${@}") )
}
compctl -QK _v-w v-w

ls-w () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate ls-w $@) )
  ls "${arr[@]}"
}
_ls-w () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete ls-w "${@}") )
}
compctl -QK _ls-w ls-w

l-w () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate l-w $@) )
  less "${arr[@]}"
}
_l-w () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete l-w "${@}") )
}
compctl -QK _l-w l-w

e-w () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate e-w $@) )
  echo "${arr[@]}"
}
_e-w () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete e-w "${@}") )
}
compctl -QK _e-w e-w

m-w () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate m-w $@) )
  mate "${arr[@]}"
}
_m-w () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete m-w "${@}") )
}
compctl -QK _m-w m-w

e-cw () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate e-cw $@) )
  echo "${arr[@]}"
}
_e-cw () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete e-cw "${@}") )
}
compctl -QK _e-cw e-cw

m-cw () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate m-cw $@) )
  mate "${arr[@]}"
}
_m-cw () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete m-cw "${@}") )
}
compctl -QK _m-cw m-cw

cd-cw () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate cd-cw $@) )
  cd "${arr[@]}"
}
_cd-cw () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete cd-cw "${@}") )
}
compctl -QK _cd-cw cd-cw

l-cw () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate l-cw $@) )
  less "${arr[@]}"
}
_l-cw () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete l-cw "${@}") )
}
compctl -QK _l-cw l-cw

v-n () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate v-n $@) )
  vim "${arr[@]}"
}
_v-n () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete v-n "${@}") )
}
compctl -QK _v-n v-n

l-n () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate l-n $@) )
  less "${arr[@]}"
}
_l-n () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete l-n "${@}") )
}
compctl -QK _l-n l-n

ls-wd () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate ls-wd $@) )
  ls "${arr[@]}"
}
_ls-wd () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete ls-wd "${@}") )
}
compctl -QK _ls-wd ls-wd

cd-wd () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate cd-wd $@) )
  cd "${arr[@]}"
}
_cd-wd () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete cd-wd "${@}") )
}
compctl -QK _cd-wd cd-wd

e-wd () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate e-wd $@) )
  echo "${arr[@]}"
}
_e-wd () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete e-wd "${@}") )
}
compctl -QK _e-wd e-wd

l-b () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate l-b $@) )
  less "${arr[@]}"
}
_l-b () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete l-b "${@}") )
}
compctl -QK _l-b l-b

cd-system_ruby () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate cd-system_ruby $@) )
  cd "${arr[@]}"
}
_cd-system_ruby () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete cd-system_ruby "${@}") )
}
compctl -QK _cd-system_ruby cd-system_ruby

cp-system_ruby () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate cp-system_ruby $@) )
  cp "${arr[@]}"
}
_cp-system_ruby () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete cp-system_ruby "${@}") )
}
compctl -QK _cp-system_ruby cp-system_ruby

g-system_ruby () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate g-system_ruby $@) )
  grep "${arr[@]}"
}
_g-system_ruby () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete g-system_ruby "${@}") )
}
compctl -QK _g-system_ruby g-system_ruby

v-system_ruby () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate v-system_ruby $@) )
  vim "${arr[@]}"
}
_v-system_ruby () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete v-system_ruby "${@}") )
}
compctl -QK _v-system_ruby v-system_ruby

ls-system_ruby () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate ls-system_ruby $@) )
  ls "${arr[@]}"
}
_ls-system_ruby () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete ls-system_ruby "${@}") )
}
compctl -QK _ls-system_ruby ls-system_ruby

l-system_ruby () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate l-system_ruby $@) )
  less "${arr[@]}"
}
_l-system_ruby () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete l-system_ruby "${@}") )
}
compctl -QK _l-system_ruby l-system_ruby

e-system_ruby () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate e-system_ruby $@) )
  echo "${arr[@]}"
}
_e-system_ruby () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete e-system_ruby "${@}") )
}
compctl -QK _e-system_ruby e-system_ruby

m-system_ruby () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate m-system_ruby $@) )
  mate "${arr[@]}"
}
_m-system_ruby () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete m-system_ruby "${@}") )
}
compctl -QK _m-system_ruby m-system_ruby

o-gd () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate o-gd $@) )
  open "${arr[@]}"
}
_o-gd () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete o-gd "${@}") )
}
compctl -QK _o-gd o-gd

ri-gd () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate ri-gd $@) )
  ri --no-standard-docs -d "${arr[@]}"
}
_ri-gd () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete ri-gd "${@}") )
}
compctl -QK _ri-gd ri-gd

v-lg () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate v-lg $@) )
  vim "${arr[@]}"
}
_v-lg () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete v-lg "${@}") )
}
compctl -QK _v-lg v-lg

m-lg () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate m-lg $@) )
  mate "${arr[@]}"
}
_m-lg () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete m-lg "${@}") )
}
compctl -QK _m-lg m-lg

cd-js () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate cd-js $@) )
  cd "${arr[@]}"
}
_cd-js () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete cd-js "${@}") )
}
compctl -QK _cd-js cd-js

cp-js () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate cp-js $@) )
  cp "${arr[@]}"
}
_cp-js () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete cp-js "${@}") )
}
compctl -QK _cp-js cp-js

g-js () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate g-js $@) )
  grep "${arr[@]}"
}
_g-js () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete g-js "${@}") )
}
compctl -QK _g-js g-js

v-js () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate v-js $@) )
  vim "${arr[@]}"
}
_v-js () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete v-js "${@}") )
}
compctl -QK _v-js v-js

ls-js () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate ls-js $@) )
  ls "${arr[@]}"
}
_ls-js () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete ls-js "${@}") )
}
compctl -QK _ls-js ls-js

l-js () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate l-js $@) )
  less "${arr[@]}"
}
_l-js () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete l-js "${@}") )
}
compctl -QK _l-js l-js

e-js () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate e-js $@) )
  echo "${arr[@]}"
}
_e-js () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete e-js "${@}") )
}
compctl -QK _e-js e-js

m-js () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate m-js $@) )
  mate "${arr[@]}"
}
_m-js () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete m-js "${@}") )
}
compctl -QK _m-js m-js

pb-g () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate pb-g $@) )
  echo -n "${arr[@]}"
}
_pb-g () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete pb-g "${@}") )
}
compctl -QK _pb-g pb-g

cd-g () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate cd-g $@) )
  cd "${arr[@]}"
}
_cd-g () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete cd-g "${@}") )
}
compctl -QK _cd-g cd-g

cp-g () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate cp-g $@) )
  cp "${arr[@]}"
}
_cp-g () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete cp-g "${@}") )
}
compctl -QK _cp-g cp-g

g-g () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate g-g $@) )
  grep "${arr[@]}"
}
_g-g () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete g-g "${@}") )
}
compctl -QK _g-g g-g

v-g () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate v-g $@) )
  vim "${arr[@]}"
}
_v-g () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete v-g "${@}") )
}
compctl -QK _v-g v-g

ls-g () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate ls-g $@) )
  ls "${arr[@]}"
}
_ls-g () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete ls-g "${@}") )
}
compctl -QK _ls-g ls-g

l-g () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate l-g $@) )
  less "${arr[@]}"
}
_l-g () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete l-g "${@}") )
}
compctl -QK _l-g l-g

e-g () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate e-g $@) )
  echo "${arr[@]}"
}
_e-g () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete e-g "${@}") )
}
compctl -QK _e-g e-g

m-g () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate m-g $@) )
  mate "${arr[@]}"
}
_m-g () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete m-g "${@}") )
}
compctl -QK _m-g m-g

cd-gg () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate cd-gg $@) )
  cd "${arr[@]}"
}
_cd-gg () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete cd-gg "${@}") )
}
compctl -QK _cd-gg cd-gg

cp-gg () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate cp-gg $@) )
  cp "${arr[@]}"
}
_cp-gg () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete cp-gg "${@}") )
}
compctl -QK _cp-gg cp-gg

g-gg () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate g-gg $@) )
  grep "${arr[@]}"
}
_g-gg () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete g-gg "${@}") )
}
compctl -QK _g-gg g-gg

v-gg () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate v-gg $@) )
  vim "${arr[@]}"
}
_v-gg () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete v-gg "${@}") )
}
compctl -QK _v-gg v-gg

ls-gg () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate ls-gg $@) )
  ls "${arr[@]}"
}
_ls-gg () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete ls-gg "${@}") )
}
compctl -QK _ls-gg ls-gg

l-gg () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate l-gg $@) )
  less "${arr[@]}"
}
_l-gg () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete l-gg "${@}") )
}
compctl -QK _l-gg l-gg

e-gg () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate e-gg $@) )
  echo "${arr[@]}"
}
_e-gg () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete e-gg "${@}") )
}
compctl -QK _e-gg e-gg

m-gg () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate m-gg $@) )
  mate "${arr[@]}"
}
_m-gg () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete m-gg "${@}") )
}
compctl -QK _m-gg m-gg

cd-r () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate cd-r $@) )
  cd "${arr[@]}"
}
_cd-r () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete cd-r "${@}") )
}
compctl -QK _cd-r cd-r

cp-r () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate cp-r $@) )
  cp "${arr[@]}"
}
_cp-r () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete cp-r "${@}") )
}
compctl -QK _cp-r cp-r

g-r () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate g-r $@) )
  grep "${arr[@]}"
}
_g-r () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete g-r "${@}") )
}
compctl -QK _g-r g-r

v-r () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate v-r $@) )
  vim "${arr[@]}"
}
_v-r () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete v-r "${@}") )
}
compctl -QK _v-r v-r

ls-r () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate ls-r $@) )
  ls "${arr[@]}"
}
_ls-r () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete ls-r "${@}") )
}
compctl -QK _ls-r ls-r

l-r () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate l-r $@) )
  less "${arr[@]}"
}
_l-r () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete l-r "${@}") )
}
compctl -QK _l-r l-r

e-r () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate e-r $@) )
  echo "${arr[@]}"
}
_e-r () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete e-r "${@}") )
}
compctl -QK _e-r e-r

m-r () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate m-r $@) )
  mate "${arr[@]}"
}
_m-r () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete m-r "${@}") )
}
compctl -QK _m-r m-r

cd-rc () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate cd-rc $@) )
  cd "${arr[@]}"
}
_cd-rc () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete cd-rc "${@}") )
}
compctl -QK _cd-rc cd-rc

cp-rc () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate cp-rc $@) )
  cp "${arr[@]}"
}
_cp-rc () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete cp-rc "${@}") )
}
compctl -QK _cp-rc cp-rc

g-rc () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate g-rc $@) )
  grep "${arr[@]}"
}
_g-rc () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete g-rc "${@}") )
}
compctl -QK _g-rc g-rc

v-rc () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate v-rc $@) )
  vim "${arr[@]}"
}
_v-rc () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete v-rc "${@}") )
}
compctl -QK _v-rc v-rc

ls-rc () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate ls-rc $@) )
  ls "${arr[@]}"
}
_ls-rc () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete ls-rc "${@}") )
}
compctl -QK _ls-rc ls-rc

l-rc () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate l-rc $@) )
  less "${arr[@]}"
}
_l-rc () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete l-rc "${@}") )
}
compctl -QK _l-rc l-rc

e-rc () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate e-rc $@) )
  echo "${arr[@]}"
}
_e-rc () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete e-rc "${@}") )
}
compctl -QK _e-rc e-rc

m-rc () {
  local IFS=$'\n'
  local arr
  arr=( $(${LBIN_PATH}lightning-translate m-rc $@) )
  mate "${arr[@]}"
}
_m-rc () {
  local IFS=$'\n'
  reply=( $(${LBIN_PATH}lightning-complete m-rc "${@}") )
}
compctl -QK _m-rc m-rc
