export VENV_HOME="$HOME/.venv"
[[ -d $VENV_HOME ]] || mkdir $VENV_HOME

# https://github.com/bernardobarreto/virtualenvwrapper/blob/master/virtualenvwrapper.sh#L648
venv() {
  if [ $# -eq 0 ]
    then
      echo "Please provide venv name"
    else
      source "$VENV_HOME/$1/bin/activate"
  fi
}

mkvenv() {
  if [ $# -eq 0 ]
    then
      echo "Please provide venv name"
    else
      python3 -m venv $VENV_HOME/$1 &&
      source $VENV_HOME/$1/bin/activate &&
      pip install black &&
      pip install pyre_check &&
      pip install pylint
  fi
}

rmvenv() {
  if [ $# -eq 0 ]
    then
      echo "Please provide venv name"
    else
      rm -r $VENV_HOME/$1
  fi
}

lsvenv(){
    ls $VENV_HOME
}