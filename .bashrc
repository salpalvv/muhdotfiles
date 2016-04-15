for file in ~/muhdotfiles/system/.{prompt,inputrc,aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;

# add bash specific exports here
# Navicure Specific {{{
# Source global definitions
if [ -f /etc/bashrc ]; then

   . /etc/bashrc

fi

#
# Maven config
#
export M2_HOME=/usr/share/apache-maven
export M2=$M2_HOME/bin 

JAVA_HOME=/usr/java/latest
export JAVA_HOME

TOMCAT_HOME=/usr/share/apache-tomcat
export TOMCAT_HOME

export PATH=$HOME/bin:/usr/local/bin:/opt/navicure/bin:/oltp/bin:$M2:$TOMCAT_HOME/bin:$PATH

export LD_LIBRARY_PATH=/opt/navicure/lib:/oltp/lib:/usr/local/lib

# Run shell script to setup Oracle environment
if [ -f /u01/app/oracle/product/11.2.0/xe/bin/oracle_env.sh ]; then

   source /u01/app/oracle/product/11.2.0/xe/bin/oracle_env.sh
	 export LD_LIBRARY_PATH=/u01/app/oracle/product/11.2.0/xe/lib:$LD_LIBRARY_PATH
fi

export SFK_COLORS=theme:black
set -o vi

export opssupportemail=oltp@localhost

source oltp_env

# }}}
