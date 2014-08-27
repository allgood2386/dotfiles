PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/rallen/pear/bin:/usr/local/sbin:/usr/local/Cellar/:$HOME/.composer/vendor/bin/
alias osxcc='dscacheutil -flushcache'
alias mtr=/usr/local/Cellar/mtr/0.85/sbin/mtr
alias lorem-ipsum='lorem-ipsum --units words --count 100 --copy'
alias gld='git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'
alias ensfp='drush en -y stage_file_proxy; drush vset stage_file_proxy_origin'
alias vgs='vagrant global-status'
export PATH=/usr/local/bin:$PATH
export PATH="./vendor/bundle/bin:$PATH"
export SALTPATH=/usr/local/Cellar/salt/2.4/data

eval "$(rbenv init -)"
alias b="bundle exec"
alias bi="bundle install --without production"

if [ -f $(brew --prefix)/etc/bash_completion ]; then
	. $(brew --prefix)/etc/bash_completion
fi

if [ -f ~/.drush.complete.sh ] ; then
    source ~/.drush.complete.sh
fi

complete -C aws_completer aws

export GITAWAREPROMPT=~/dotfiles/git-aware-prompt
source $GITAWAREPROMPT/main.sh
export PS1="\u@\h \w \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ "

export JAVA_HOME="$(/usr/libexec/java_home)"
export EC2_HOME="/usr/local/Cellar/ec2-api-tools/1.6.13.0/libexec"
export AWS_ACCESS_KEY=AKIAJP2OJY7N3USIWTNQ
export AWS_SECRET_KEY=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
