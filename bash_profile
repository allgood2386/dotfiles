PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/rallen/pear/bin:/usr/local/sbin:/usr/local/Cellar/:$HOME/.composer/vendor/bin/
alias osxcc='dscacheutil -flushcache'
alias mtr=/usr/local/Cellar/mtr/0.85/sbin/mtr
alias lorem-ipsum='lorem-ipsum --units words --count 100 --copy'
alias gld='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'
alias ensfp='drush en -y stage_file_proxy; drush vset stage_file_proxy_origin'
export PATH=/usr/local/bin:$PATH
export PATH="./vendor/bundle/bin:$PATH"
export SALTPATH=/usr/local/Cellar/salt/2.4/data

eval "$(rbenv init -)"
alias b="bundle exec"
alias bi="bundle install --without production"

if [ -f ~/.git-completion.bash ]; then
	  . ~/.git-completion.bash
fi
