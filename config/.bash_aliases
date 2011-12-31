# kill webrick Rails server (usefully when it's detatched)
alias stopwebrick='kill -9 $(lsof -i:3000) &> /dev/null' 

# shortcuts to frequently used directories
alias _rails='~/Dropbox/Code/Rails/Projects'
alias _js='~/Dropbox/Code/JavaScript/Projects'
alias _dotfiles='~/Dropbox/Code/Dotfiles'
alias _workspace='cd ~/Dropbox/Code/Workspace'

# UPMC HealthTrak commands
alias _sass='cd ~/Dropbox/UPMC;sass --watch styles/scss:styles --line-numbers'
alias _healthtrak='vim ~/Dropbox/UPMC/styles/scss'
