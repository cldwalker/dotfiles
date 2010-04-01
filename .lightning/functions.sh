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
e-rt () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-rt $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-rt" e-rt

#base directory of a ruby gem project
v-rt () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-rt $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-rt" v-rt

#my code directories
c () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate c $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete c" c

#my code directories
m-c () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-c $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-c" m-c

#my code directories
e-c () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-c $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-c" e-c

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

v-w () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-w $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-w" v-w

g-w () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-w $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-w" g-w

l-w () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-w $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-w" l-w

ls-w () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-w $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-w" ls-w

m-w () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-w $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-w" m-w

e-w () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-w $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-w" e-w

#base directory of a ruby gem project
git-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate git-rb $@) )
  git "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete git-rb" git-rb

#base directory of a ruby gem project
cd-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-rb $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-rb" cd-rb

#base directory of a ruby gem project
cp-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cp-rb $@) )
  cp "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cp-rb" cp-rb

#base directory of a ruby gem project
v-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-rb $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-rb" v-rb

#base directory of a ruby gem project
g-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-rb $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-rb" g-rb

#base directory of a ruby gem project
l-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-rb $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-rb" l-rb

#base directory of a ruby gem project
ls-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-rb $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-rb" ls-rb

#base directory of a ruby gem project
m-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-rb $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-rb" m-rb

#base directory of a ruby gem project
e-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-rb $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-rb" e-rb

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

v-g () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-g $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-g" v-g

g-g () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-g $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-g" g-g

l-g () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-g $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-g" l-g

ls-g () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-g $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-g" ls-g

m-g () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-g $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-g" m-g

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

cd-r9 () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-r9 $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-r9" cd-r9

cp-r9 () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cp-r9 $@) )
  cp "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cp-r9" cp-r9

v-r9 () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-r9 $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-r9" v-r9

g-r9 () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-r9 $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-r9" g-r9

l-r9 () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-r9 $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-r9" l-r9

ls-r9 () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-r9 $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-r9" ls-r9

m-r9 () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-r9 $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-r9" m-r9

e-r9 () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-r9 $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-r9" e-r9

l-b () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-b $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-b" l-b

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

v-r () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-r $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-r" v-r

g-r () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-r $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-r" g-r

l-r () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-r $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-r" l-r

ls-r () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-r $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-r" ls-r

m-r () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-r $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-r" m-r

e-r () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-r $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-r" e-r

#access any files from the root of a rails project
e-ror () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-ror $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-ror" e-ror

#access any files from the root of a rails project
g-ror () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-ror $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-ror" g-ror

#access any files from the root of a rails project
v-ror () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-ror $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-ror" v-ror

#open a gem's documentation in a browser
o-gd19 () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate o-gd19 $@) )
  open "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete o-gd19" o-gd19
