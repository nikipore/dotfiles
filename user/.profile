export HOMEBREW_GITHUB_API_TOKEN="2369f279c8f95296201cb7978820414dfdcc2b44"

export VIRTUALENVWRAPPER_PYTHON=$(brew --prefix)/bin/python
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
export WORKON_HOME=~/env
source $(brew --prefix)/bin/virtualenvwrapper.sh
