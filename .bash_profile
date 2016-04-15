source ~/.profile
source ~/.bashrc
# source ~/.zshrc

# Navicure specific {{{
# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH
if [ -f /u01/app/oracle/product/11.2.0/xe/bin/oracle_env.sh ]; then
	source /u01/app/oracle/product/11.2.0/xe/bin/oracle_env.sh;
fi
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/u01/app/oracle/product/11.2.0/xe/lib
# }}}
