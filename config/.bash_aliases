# kill webrick Rails server (usefully when it's detatched)
alias stopwebrick='kill -9 $(lsof -i:3000) &> /dev/null' 

# shortcuts to frequently used directories
alias _scripts='cd ~/Dropbox/Programs/Scripts/Bash'

# UPMC HealthTrak commands
# alias _sass='cd ~/Dropbox/UPMC;sass --watch styles/scss:styles --line-numbers'

# utility commands
alias blog='~/Dropbox/Programs/Scripts/Bash/create_scriptogram_post.sh'
alias update-vim-plugins='~/update_vim.sh'


