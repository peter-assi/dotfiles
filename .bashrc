complete -C ~/dotfiles/rake_completion -o default rake

      # Add the following to your ~/.bashrc or ~/.zshrc
      hitch() {
        command hitch "$@"
        if [[ -s "$HOME/.hitch_export_authors" ]] ; then source "$HOME/.hitch_export_authors" ; fi
      }
      alias unhitch='hitch -u'
      # Uncomment to persist pair info between terminal instances
      # hitch
# z
. `brew --prefix`/etc/profile.d/z.sh


#teh javas
export JAVA_OPTS="-Dfile.encoding=utf-8"
export JAVA_TOOL_OPTIONS="-Dfile.encoding=UTF8"
export MAVEN_OPTS="-Dfile.encoding=utf-8 -Xmx1024m"
export JAVA_HOME="$(/usr/libexec/java_home)"

#prefer local brews
export PATH=/usr/local/bin:$PATH
#add brew python to path
#export PATH=/usr/local/Cellar/python/2.7.3/bin:$PATH
#add python executables
export PATH=/usr/local/share/python:$PATH
#export WORKON_HOME=$HOME/.virtualenvs
#source /usr/local/share/python/virtualenvwrapper.sh


#modern openssl
export PATH=`brew --prefix openssl`/bin:$PATH

#node binaries
export PATH=/usr/local/share/npm/bin:$PATH

#rbenv
#export PATH="$HOME/.rbenv/bin:$PATH"
#eval "$(rbenv init -)"

source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh
