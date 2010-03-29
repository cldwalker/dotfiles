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
sp () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate sp $@) )
  spec "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete sp" sp

#my code directories
c () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate c $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete c" c

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

gi-w () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate gi-w $@) )
  git "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete gi-w" gi-w

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

o-w () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate o-w $@) )
  open "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete o-w" o-w

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
gi-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate gi-rb $@) )
  git "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete gi-rb" gi-rb

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

#base directory of a ruby gem project
o-rb () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate o-rb $@) )
  open "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete o-rb" o-rb

cd-ruby_load_path () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-ruby_load_path $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-ruby_load_path" cd-ruby_load_path

cp-ruby_load_path () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cp-ruby_load_path $@) )
  cp "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cp-ruby_load_path" cp-ruby_load_path

v-ruby_load_path () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-ruby_load_path $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-ruby_load_path" v-ruby_load_path

g-ruby_load_path () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-ruby_load_path $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-ruby_load_path" g-ruby_load_path

l-ruby_load_path () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-ruby_load_path $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-ruby_load_path" l-ruby_load_path

gi-ruby_load_path () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate gi-ruby_load_path $@) )
  git "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete gi-ruby_load_path" gi-ruby_load_path

ls-ruby_load_path () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-ruby_load_path $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-ruby_load_path" ls-ruby_load_path

m-ruby_load_path () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-ruby_load_path $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-ruby_load_path" m-ruby_load_path

e-ruby_load_path () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-ruby_load_path $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-ruby_load_path" e-ruby_load_path

o-ruby_load_path () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate o-ruby_load_path $@) )
  open "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete o-ruby_load_path" o-ruby_load_path

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

gi-g () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate gi-g $@) )
  git "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete gi-g" gi-g

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

o-g () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate o-g $@) )
  open "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete o-g" o-g

cd-cw () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-cw $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-cw" cd-cw

cp-cw () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cp-cw $@) )
  cp "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cp-cw" cp-cw

v-cw () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-cw $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-cw" v-cw

g-cw () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-cw $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-cw" g-cw

l-cw () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-cw $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-cw" l-cw

gi-cw () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate gi-cw $@) )
  git "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete gi-cw" gi-cw

ls-cw () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-cw $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-cw" ls-cw

m-cw () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-cw $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-cw" m-cw

e-cw () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-cw $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-cw" e-cw

o-cw () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate o-cw $@) )
  open "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete o-cw" o-cw

cd-n () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-n $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-n" cd-n

cp-n () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cp-n $@) )
  cp "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cp-n" cp-n

v-n () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-n $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-n" v-n

g-n () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-n $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-n" g-n

l-n () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-n $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-n" l-n

gi-n () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate gi-n $@) )
  git "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete gi-n" gi-n

ls-n () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-n $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-n" ls-n

m-n () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-n $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-n" m-n

e-n () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-n $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-n" e-n

o-n () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate o-n $@) )
  open "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete o-n" o-n

cd-wd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-wd $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-wd" cd-wd

cp-wd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cp-wd $@) )
  cp "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cp-wd" cp-wd

v-wd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-wd $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-wd" v-wd

g-wd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-wd $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-wd" g-wd

l-wd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-wd $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-wd" l-wd

gi-wd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate gi-wd $@) )
  git "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete gi-wd" gi-wd

ls-wd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-wd $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-wd" ls-wd

m-wd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-wd $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-wd" m-wd

e-wd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-wd $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-wd" e-wd

o-wd () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate o-wd $@) )
  open "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete o-wd" o-wd

cd-b () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-b $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-b" cd-b

cp-b () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cp-b $@) )
  cp "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cp-b" cp-b

v-b () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-b $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-b" v-b

g-b () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-b $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-b" g-b

l-b () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-b $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-b" l-b

gi-b () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate gi-b $@) )
  git "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete gi-b" gi-b

ls-b () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-b $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-b" ls-b

m-b () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-b $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-b" m-b

e-b () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-b $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-b" e-b

o-b () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate o-b $@) )
  open "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete o-b" o-b

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

gi-r9 () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate gi-r9 $@) )
  git "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete gi-r9" gi-r9

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

o-r9 () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate o-r9 $@) )
  open "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete o-r9" o-r9

#access any files from the root of a rails project
cd-ror () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cd-ror $@) )
  cd "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cd-ror" cd-ror

#access any files from the root of a rails project
cp-ror () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate cp-ror $@) )
  cp "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete cp-ror" cp-ror

#access any files from the root of a rails project
v-ror () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate v-ror $@) )
  vim "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete v-ror" v-ror

#access any files from the root of a rails project
g-ror () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate g-ror $@) )
  grep "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete g-ror" g-ror

#access any files from the root of a rails project
l-ror () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate l-ror $@) )
  less "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete l-ror" l-ror

#access any files from the root of a rails project
gi-ror () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate gi-ror $@) )
  git "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete gi-ror" gi-ror

#access any files from the root of a rails project
ls-ror () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate ls-ror $@) )
  ls "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete ls-ror" ls-ror

#access any files from the root of a rails project
m-ror () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate m-ror $@) )
  mate "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete m-ror" m-ror

#access any files from the root of a rails project
e-ror () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate e-ror $@) )
  echo "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete e-ror" e-ror

#access any files from the root of a rails project
o-ror () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate o-ror $@) )
  open "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete o-ror" o-ror

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

gi-r () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate gi-r $@) )
  git "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete gi-r" gi-r

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

o-r () {
  local IFS=$'\n'
  local arr=( $(${LBIN_PATH}lightning-translate o-r $@) )
  open "${arr[@]}"
}
complete -o default -C "${LBIN_PATH}lightning-complete o-r" o-r
