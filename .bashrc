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

#prefer local brews
export PATH=/usr/local/bin:$PATH
