#!/bin/bash
#!/bin/sh -

########### All variable collection

function variables_ () {
RED='\033[0;41;30m'
STD='\033[0;0;39m'
mkdir -p /tmp/mysql-tmp
chmod 777 /tmp/mysql-tmp
#Tmp for pass
TMP=/tmp/mysql-tmp/mysql-tmp23455.log
#Tmp for user
TMP0=/tmp/mysql-tmp/mysql-tmp-validator.log
TMP1=/tmp/mysql-tmp/mysql-tmp455.log
TMP2=/tmp/mysql-tmp
HISTORY=/tmp/mysql-tmp/script_history
mkdir -p /tmp/findme/
mkdir -p /tmp/findme/cron
mkdir -p /usr/lib/cssam/mod/tmp
mkdir -p /usr/lib/cssam/mod/log
mkdir -p /usr/lib/cssam/mod/.sshkeys
CRONDIR=/tmp/findme/cron
findmepath=/tmp/findme/
CATTMP1=/tmp/findme/.srch.log
EDITORTMP1=/tmp/findme/.editorfind.log
LOGO=/tmp/findme/.logo.log
LOGO1=/tmp/findme/.logo1.log
export normal=`echo "\033[m"`
export menu=`echo "\033[36m"` #Blue
export bgmenu=`echo "\033[46m"` #Blue
export number=`echo "\033[33m"` #yellow
export bgred=`echo "\033[41m"`
export fgred=`echo "\033[31m"`
export green=`echo "\033[32m"`
export blink=`echo "\033[5m" `
export lightbggrey=`echo "\033[47m" `
export bggrey=`echo "\033[100m" ` 
export grey=`echo "\033[90m" ` 
export menu1=`echo -e "\033[100m"`
export black=`echo -e "\033[30m"`
export bggreen=`echo -e "\033[42m"`
export bgwhite=`echo -e "\033[100m"`
export bold=`echo -e "\033[1m"`
 IPL=`hostname -I | awk '{print $1,"\n"$2,"\n",$3  }' | sed  '/:/d' |  awk 'NF > 0' | sed 's/^[ \t]*//' | sed 's/[[:blank:]]*$//'`
export under=`echo -e "\033[4m"`-
#sed -i -e 's/\r$//' listdir.sh && chmod +x listdir.sh
whoami=`whoami`
h1=`date +%R:%M%p`
#true > script_history
history -w script_history
hostname=`hostname | cut -d"." -f1`
SRVLIST=pwd/serverlist.log
export  du=`df -h /`
PATH1=/
export EDITORTMP1=/tmp/findme/.editorfind.log
export ROOTUSERSTMPLOG=/tmp/findme/.rootuserstmplog.log
export ROOTUSERSTMPLOG1=/tmp/findme/.rootuserstmplog1.log
export TIMETMPLOG=/tmp/findme/.timetmplog.log
EDITORLSCHK=`ls -la /tmp/findme |  grep editorfind.log | wc -l `
export TIMETMPLOG1=/tmp/findme/.timetmplog1.log
export CHMODTMPLOG1=/tmp/findme/.chmodtmp1.log
if [ "$EDITORLSCHK" == 0 ];
then 
echo > /tmp/findme/.editorfind.log
fi
export EDIPREF=`cat $EDITORTMP1`
export VIM=`ls /usr/bin | grep "vim$" | wc -l`
export NANO=`ls /usr/bin | grep nano | wc -l`
export UBUNTU=`awk -F= '/^NAME/{print $2}' /etc/os-release | grep -o Ubuntu | wc -l`
export CENTOS=`awk -F= '/^NAME/{print $2}' /etc/os-release | grep -o CentOS | wc -l `
export SANGOMA=`awk -F= '/^NAME/{print $2}' /etc/os-release | grep -o Sangoma | wc -l`
export SANGOMA1=`awk -F= '/^NAME/{print $2}' /etc/os-release | grep -o Sangoma`
export CENTOS1=`awk -F= '/^NAME/{print $2}' /etc/os-release | grep -o CentOS `
export UBUNTU1=`awk -F= '/^NAME/{print $2}' /etc/os-release | grep -o Ubuntu `
HIDENOFFBAN="${menu}OFF${normal}"
HIDENONBAN="${menu}ON${normal}"
 DIRLOCATION="$(printf "[$whoami@$hostname $PWD]#")"
MAIN="\n${number}1.${menu}New dir   [${number}d${menu}] or [${number}1${menu}]                      ${number}6.${menu}Find file or dir [${number}i${menu}] or [${number}6${menu}]\n${number}2.${menu}New file  [${number}f${menu}] or [${number}2${menu}]                      ${number}7.${menu}Find pattern     [${number}p${menu}] or [${number}7${menu}]\n${number}3.${menu}Delete    [${number}delete${menu}] or [${number}3${menu}]${normal}                 ${number}8.${menu}Last file search [${number}v${menu}] or [${number}8${menu}]${normal}\n${number}4.${menu}Edit file [${number}e${menu}] or [${number}4${menu}]                      ${number}9.${menu}Hidden items  ON [${number}H${menu}] or [${number}L${menu}] OFF\n${number}5.${menu}Rename    [${number}r${menu}] or [${number}5${menu}]\n${number}*.${menu}Editor    [${number}a${menu}] ${normal}VI${menu} [${number}b${menu}] ${normal}VIM${menu} [${number}c${menu}] ${normal}NANO${menu}${normal}" 
D="$(date +"Date:%d.%m.%Y")"
LD="$(date +"Time-%H:%M:%S-Date-%d.%m.%Y")"
T="$(date +"Time:%H:%M:%S")"
#MAIN="\n${number}1.${menu}New dir   [${number}d${menu}] or [${number}1${menu}]                      ${number}6.${menu}Find file or dir [${number}i${menu}] or [${number}6${menu}]\n${number}2.${menu}New file  [${number}f${menu}] or [${number}2${menu}]                      ${number}7.${menu}Find pattern     [${number}p${menu}] or [${number}7${menu}]\n${number}3.${menu}Delete    [${number}delete${menu}] or [${number}3${menu}]${normal}                 ${number}8.${menu}Last file search [${number}v${menu}] or [${number}8${menu}]${normal}\n${number}4.${menu}Edit file [${number}e${menu}] or [${number}4${menu}]                      ${number}9.${menu}Hidden items  ON [${number}H${menu}] or [${number}L${menu}] OFF\n${number}5.${menu}Rename    [${number}r${menu}] or [${number}5${menu}]\n${number}*.${menu}Editor ${normal}VI${menu} [${number}a${menu}] ${normal}VIM${menu} [${number}b${menu}] "$NANO"${menu} [${number}c${menu}]"               
lockedusers=/tmp/findme/.lockedusers.log
ITEMS50="\n${normal}This folder have more then ${menu}50 ${normal}items.\nPlease use ${menu}mouse left click${normal} to select and paste item or ${menu}type${normal} item name.${normal}\n\n"
C1itemchoice=`printf "${menu}Press [${number}Enter${menu}] to back / \n\n${menu}Use mouse to ${number}paste ${menu}or ${number}type ${menu}item use ${number}TAB${menu}:${normal}"`
n=100
cat /etc/passwd | grep -v 'false\|shutdown\|halt\|operator\|ftp\|dbus\|chrony\|polkitd\|adm' | 
grep -v 'rpc\|radiusd\|redis\|sync\|messagebus\|landscape\|_apt\|ntp\|tcpdump\|lp' |
grep -v 'unbound\|daemon\|games\|backup\|sys\|uucp\|proxy\|syslog\|uuid\|sshd\|news\|list\|irc\|nobody\|gnats\|man'  |
awk -F':' '{ print $1 }' | tee >$findmepath/.userlist.txt

history -r script_history
#SLEEP2=`sleep 2`
SLEEP2=`echo`
export SYNCCHK=`timedatectl status | grep -o -P '(?<=(synchronized: )).*(?=$)' | sed  's/ //g' | wc -m`
#General
OSRELEASE=`ls -l /etc | grep "\<os-release\>" | wc -l`
}

########### System Overview
 
function system_status_start_ () { #Working on start
unset BANNERLOCKED
unset SSHPORTBAN
unset SELINUXBAN
unset FWBAN
unset IPTABLESBAN
unset FAIL2BAN
unset SAMBABAN
unset HTTPDBAN
unset NGINXBAN
unset TOMCATBAN
unset PHPBAN && unset MYSQLBAN && unset POSTGRESBAN && unset MONGOBAN && unset SAMBAUSERSBAN && unset SYSTEMUSERSBAN && unset ROOTUSERSBAN
unset UBUNTUBAN
unset CENTOSBAN
unset CENTOSBAN
unset DIRLOCATION 
unset ASTERISBAN
unset SANGOMABAN
unset DOMAINBANN
chk_asterisk_
unset_banner_
chk_firewalld_
chk_selinux_
chk_iptables_
chk_fail2ban_
chk_ssh_port_
chk_httpd_port_
chk_php_v_
chk_mysql_
chk_mongo_
chk_postgres_
chk_samba_
chk_samba_users_
chk_sys_active_users_
chk_root_users_
chk_os_
BANNERLOCKED1=`cat $lockedusers | wc -l`
BANNERLOCKED=`echo -e "$BANNERLOCKED1"`
# DOMAINTOLEACHEK=`ls /usr/sbin | grep realm | wc -l`
# if [ "$DOMAINTOLEACHEK" != 0 ];
# then
# DOMAINTOLEAV=`realm list | grep domain-name | awk '{print $2}' | wc -l`
# if [ "$DOMAINTOLEAV" == 0 ];
# then
# export DOMAINBANN="${green}WorkGroup${normal}"
# else
# DOMAINTOLEAV=`realm list | grep domain-name | awk '{print $2}'`
# export DOMAINBANN="${green}$DOMAINTOLEAV${normal}"
# fi
# fi
# clear && echo && clear
# clear && echo && clear
	printf "\t\t  ${menu}         *****************Server Overview${menu}******************${normal}\n"
	#logo2_
	echo
	echo -e "\t\t   ${menu}        ${menu1}-----------------------${bgwhite}${menu}OS${menu}${menu1}-------------------------${normal}"
	echo -e "\t\t\t   ${green}                    $CENTOSBAN$UBUNTUBAN$SANGOMABAN${normal}"
	# echo -e "${menu}        ${menu1}--------------------------------------------------${normal}\n"
	echo -e "\t\t   ${menu}        ${menu1}----------------------${bgwhite}${menu}Date${menu}${menu1}------------------------${normal}"
	get_server_time_
	# echo -e "${menu}        ${menu1}--------------------------------------------------${normal}\n"
	echo -e "\t\t   ${menu}        ${menu1}---------------------${bgwhite}${menu}Security${menu}${menu1}---------------------${normal}"
	echo -e "\t\t\t   ${menu}$SSHPORTBAN$FWBAN$SELINUXBAN$IPTABLESBAN$FAIL2BAN${normal}"
	# echo -e "${menu}        ${menu1}--------------------------------------------------${normal}\n"
	echo -e "\t\t   ${menu}        ${menu1}---------------------${bgwhite}${menu}Servers${menu}${menu1}----------------------${normal}"
	echo -e "\t\t\t   ${menu}$SAMBABAN$HTTPDBAN$NGINXBAN$ASTERISBAN$PHPBAN$MYSQLBAN$POSTGRESBAN$MONGOBAN$TOMCATBAN ${normal}"
	# echo -e "${menu}        ${menu1}--------------------------------------------------${normal}\n"
	echo -e "\t\t   ${menu}        ${menu1}----------------------${bgwhite}${menu}Users${menu}${menu1}-----------------------${normal}"
	echo -e "${green}${number}\t\t\t   $SYSTEMUSERSBAN\n\t\t\t  $ROOTUSERSBAN \t\t   $CRONBANN     ${normal}"
	echo -e "\t\t   ${menu}        ${menu1}--------------------------------------------------${normal}\n"
	# echo -e "\t\t   ${menu}${normal}"
	# echo -e "\n\n"
	unset BANNER
	
	
	# $SLEEP2
	# start_
	# clear
}
 
function system_status_start1_ () {  #Main
#clear && echo && clear
unset BANNERLOCKED
unset SSHPORTBAN
unset SELINUXBAN
unset FWBAN
unset IPTABLESBAN
unset FAIL2BAN
unset SAMBABAN
unset HTTPDBAN
unset NGINXBAN
unset TOMCATBAN
unset PHPBAN && unset MYSQLBAN && unset POSTGRESBAN && unset MONGOBAN && unset SAMBAUSERSBAN && unset SYSTEMUSERSBAN && unset ROOTUSERSBAN
unset UBUNTUBAN
unset CENTOSBAN
unset CENTOSBAN
unset DIRLOCATION 
unset ASTERISBAN
unset SANGOMABAN
unset DOMAINBANN
chk_asterisk_
unset_banner_
chk_firewalld_
chk_selinux_
chk_iptables_
chk_fail2ban_
chk_ssh_port_
chk_httpd_port_
chk_php_v_
chk_mysql_
chk_mongo_
chk_postgres_
chk_samba_
chk_samba_users_
chk_sys_active_users_
chk_root_users_
chk_os_
chk_msdomain_
BANNERLOCKED1=`cat $lockedusers | wc -l`
BANNERLOCKED=`echo -e "$BANNERLOCKED1"`
DOMAINTOLEACHEK=`ls /usr/sbin | grep realm | wc -l`
if [ "$DOMAINTOLEACHEK" != 0 ];
then
DOMAINTOLEAV=`realm list | grep domain-name | awk '{print $2}' | wc -l`
if [ "$DOMAINTOLEAV" == 0 ];
then
export DOMAINBANN="${green}WorkGroup${normal}"
else
DOMAINTOLEAV=`realm list | grep domain-name | awk '{print $2}'`
export DOMAINBANN="${green}$DOMAINTOLEAV${normal}"
fi
fi
#clear && echo && clear
#clear && echo && clear
	#printf "${menu}      ***********************Over view ${menu}***********************${normal}\n"
	echo -e "${menu}        ${menu1}                  ${number}Host${menu}      ${number}OS${menu}       ${number}Domain${menu}                 ${normal}"
	echo -e "\t${green}               [$hostname] $CENTOSBAN$UBUNTUBAN$SANGOMABAN $DOMAINBANN${normal}"
	#echo -e "${menu}        ${menu1}--------------------------------------------------${normal}\n"
	echo -e "${menu}        ${menu1}                            ${bgwhite}${number}Date${menu}${menu1}                            ${normal}"
	get_server_time_
	#echo -e "${menu}        ${menu1}--------------------------------------------------${normal}\n"
	echo -e "${menu}        ${menu1}                          ${bgwhite}${number}Security${menu}${menu1}                          ${normal}"
	echo -e "\t${menu}     $SSHPORTBAN$FWBAN$SELINUXBAN$IPTABLESBAN$FAIL2BAN${normal}"
	#echo -e "${menu}        ${menu1}--------------------------------------------------${normal}\n"
	echo -e "${menu}        ${menu1}                          ${bgwhite}${number}Servers${menu}${menu1}                           ${normal}"
	echo -e "\t${menu}     $SAMBABAN$HTTPDBAN$NGINXBAN$ASTERISBAN$PHPBAN$MYSQLBAN$POSTGRESBAN$MONGOBAN$TOMCATBAN ${normal}"
	#echo -e "${menu}        ${menu1}--------------------------------------------------${normal}\n"
	echo -e "${menu}        ${menu1}                           ${bgwhite}${number}Users${menu}${menu1}                            ${normal}"
	echo -e "\t     ${green}${fgred} $BANNERLOCKED${green} Locked users${normal}           $SAMBAUSERSBAN\n\t      $SYSTEMUSERSBAN  $ROOTUSERSBAN $CRONBANN     ${normal}"
	echo -e "${menu}        ${menu1}------------------------------------------------------------${normal}\n"
	
	#echo -e "\n\n\n\n\n"
	unset BANNER
	
	#clear
} 
 
function system_status_ () {  #Main
#clear && echo && clear
unset BANNERLOCKED
unset SSHPORTBAN
unset SELINUXBAN
unset FWBAN
unset IPTABLESBAN
unset FAIL2BAN
unset SAMBABAN
unset HTTPDBAN
unset NGINXBAN
unset TOMCATBAN
unset PHPBAN && unset MYSQLBAN && unset POSTGRESBAN && unset MONGOBAN && unset SAMBAUSERSBAN && unset SYSTEMUSERSBAN && unset ROOTUSERSBAN
unset UBUNTUBAN
unset CENTOSBAN
unset CENTOSBAN
unset DIRLOCATION 
unset ASTERISBAN
unset SANGOMABAN
unset DOMAINBANN
chk_asterisk_
unset_banner_
chk_firewalld_
chk_selinux_
chk_iptables_
chk_fail2ban_
chk_ssh_port_
chk_httpd_port_
chk_php_v_
chk_mysql_
chk_mongo_
chk_postgres_
chk_samba_
chk_samba_users_
chk_sys_active_users_
chk_root_users_
chk_os_
chk_msdomain_
BANNERLOCKED1=`cat $lockedusers | wc -l`
BANNERLOCKED=`echo -e "$BANNERLOCKED1"`

DOMAINTOLEACHEK=`ls /usr/sbin | grep realm | wc -l`
if [ "$DOMAINTOLEACHEK" != 0 ];
then
DOMAINTOLEAV=`realm list | grep domain-name | awk '{print $2}' | wc -l`
if [ "$DOMAINTOLEAV" == 0 ];
then
export DOMAINBANN="${green}WorkGroup${normal}"
else
DOMAINTOLEAV=`realm list | grep domain-name | awk '{print $2}'`
export DOMAINBANN="${green}$DOMAINTOLEAV${normal}"
fi
fi

#clear && echo && clear
#clear && echo && clear
	#printf "${menu}      ***********************Over view ${menu}***********************${normal}\n"
	echo -e "\n${menu}        ${menu1}-----------Host--------OS-------Domain------------${normal}"
	echo -e "\t${green}         [$hostname] $CENTOSBAN$UBUNTUBAN$SANGOMABAN $DOMAINBANN${normal}"
	#echo -e "${menu}        ${menu1}--------------------------------------------------${normal}\n"
	echo -e "${menu}        ${menu1}----------------------${bgwhite}${menu}Date${menu}${menu1}------------------------${normal}"
	get_server_time_
	#echo -e "${menu}        ${menu1}--------------------------------------------------${normal}\n"
	echo -e "${menu}        ${menu1}---------------------${bgwhite}${menu}Security${menu}${menu1}---------------------${normal}"
	echo -e "\t${menu}$SSHPORTBAN$FWBAN$SELINUXBAN$IPTABLESBAN$FAIL2BAN${normal}"
	#echo -e "${menu}        ${menu1}--------------------------------------------------${normal}\n"
	echo -e "${menu}        ${menu1}---------------------${bgwhite}${menu}Servers${menu}${menu1}----------------------${normal}"
	echo -e "\t${menu}$SAMBABAN$HTTPDBAN$NGINXBAN$ASTERISBAN$PHPBAN$MYSQLBAN$POSTGRESBAN$MONGOBAN$TOMCATBAN ${normal}"
	#echo -e "${menu}        ${menu1}--------------------------------------------------${normal}\n"
	echo -e "${menu}        ${menu1}----------------------${bgwhite}${menu}Users${menu}${menu1}-----------------------${normal}"
	echo -e "\t${green}[${fgred} $BANNERLOCKED${green}] Locked users${normal}   $SAMBAUSERSBAN\n\t$SYSTEMUSERSBAN   $ROOTUSERSBAN $CRONBANN     ${normal}"
	echo -e "${menu}        ${menu1}--------------------------------------------------${normal}\n"
	echo -e "${menu}${normal}"
	echo -e "\n\n\n\n\n"
	unset BANNER
	pause_witout_exit_
	
	start_
	#clear
} 

current_server_time_centos_ () {
DATECHK=`date | awk '{print  $4, "  |  ", $3, "  |  ", $2,"  |  ", $6 }'`
CHKTIMEZONE=`ls -l /etc/localtime | grep -o -P '(?<=(/usr/share/zoneinfo/)).*(?=$)'`
longstr=`(echo -e "$DATECHK" | awk '{if(length>x){x=length;y=$0}}END{print y}')`
longlen=${#longstr}
edge=$(echo -e "$longstr" | sed 's/./-/g') 
#echo -e "            Current Server Time   \n"

#echo -e "\t    ${green}     Time       Day      Month      Year   ${normal}"
echo -e "\t\t\t        +$edge---+${normal}"
while IFS= read -r line; do
 strlen=${#line}  
 echo -e -n "\t\t\t        |${normal} ${green}$line${normal}"
 gap=$((longlen - strlen))
 if [ "$gap" > 0 ]; then
  for i in $(seq 1 $gap); do echo -n " "; done
  echo -e "  |${normal}"
 else
  echo -e "|${normal}"
 fi
done < <(printf '%s\n' "$DATECHK")
echo -e "\t\t\t        +$edge---+${normal}"
echo -e "\t\t\t              ${green}[Timezone: $CHKTIMEZONE${green}]${normal}"
}

current_server_time_ubuntu_ () {
DATECHK=`date | awk '{print  $5, "  |  ", $2, "  |  ", $3,"  |  ", $4 }'`
CHKTIMEZONE=`ls -l /etc/localtime | grep --color=always -o -P '(?<=(/usr/share/zoneinfo/)).*(?=$)'`
longstr=`(echo "$DATECHK" | awk '{if(length>x){x=length;y=$0}}END{print y}')`
longlen=${#longstr}
edge=$(echo "$longstr" | sed 's/./-/g') 
#echo -e "            Current Server Time   \n"
#echo -e "\t${green}     Time       Day      Month      Year   ${normal}"
echo -e "\t+$edge---+${normal}"
while IFS= read -r line; do
 strlen=${#line}  
 echo -e -n "\t|${normal} ${green}$line${normal}"
 gap=$((longlen - strlen))
 if [ "$gap" > 0 ]; then
  for i in $(seq 1 $gap); do echo -n " "; done
  echo -e "  |${normal}"
 else
  echo -e "  |${normal}"
 fi
done < <(printf '%s\n' "$DATECHK")
echo -e "\t+$edge---+${normal}"
echo -e "\t${green}[Timezone: ${green}$CHKTIMEZONE${green}]${normal}"
 
}

get_server_time_ () {

if [ "$CENTOS" == 1 ]; then
    current_server_time_centos_
elif [ "$UBUNTU" == 1 ]; then
	current_server_time_ubuntu_
fi
}

chk_firewalld_ () { 
#1 Checl firewall if up or down
if [ "$CENTOS" == 1 ];
  then
         UFWCHK=`systemctl status firewalld | grep -o "Active: active" | wc -l`
		 
if [ "$UFWCHK" == 0 ]; 
    then 
	return 0
        #FWBAN="${grey}[FIREWALL]${normal}"
      else
        FWBAN="${green}[FIREWALL]${normal}"
fi
		  
elif [ "$UBUNTU" == 1 ];
    then
	     UFWCHK=`systemctl status ufw | grep -o "Active: active" | wc -l`
if [ "$UFWCHK" == 0 ]; 
     then
		FWBAN="${green}[${RED}${blink}FIREWALL OFF${normal}${green}]${normal}"
     else
        FWBAN="${green}[FIREWALL]${normal}"
fi
			
fi
}

chk_selinux_ () { 
#1 Checl selinux if up or down
SESTATUS1=`ls  /etc/selinux | grep config | wc -l`


if [ "$SESTATUS1" != 0 ] ;
  then
  SESTATUS=`sestatus | grep -o disabled | wc -l`
  if [ "$SESTATUS" == 1 ];
  then
  return 0
    #SELINUXBAN="${grey}[SELINUX]${normal}"
      else
	  
    SELINUXBAN="${green}[SELINUX]${normal}"
	fi
fi
}

chk_iptables_ () { 
#1 Checl selinux if up or down
IPTABLESSTAT=`systemctl | grep iptables | wc -l`
if [ "$IPTABLESSTAT" != 0 ]  ;
  then
     IPTABLESSTAT1=`systemctl status iptables | grep -o "Active: active" | wc -l`
	 if [ "$IPTABLESSTAT1" == 1 ];
	 then
	 IPTABLESBAN="${green}[IPTABLES]${normal}"
    else
	IPTABLESBAN="${green}[${normal}${fgred}IPTABLES OFF${normal}${green}]${normal}"
	fi
     else
	 IPTABLESBAN="${green}[${normal}${fgred}IPTABLES OFF${normal}${green}]${normal}"
fi
}

chk_fail2ban_ () { 
#1 Checl selinux if up or down
FAIL2BANSTAT=`systemctl | grep fail2ban | wc -l`
if [ "$FAIL2BANSTAT" != 0 ] ;
  then
  FAIL2BANSTAT1=`systemctl status fail2ban | grep -o "Active: active" | wc -l`
  if [ "$FAIL2BANSTAT1" == 1 ];
	 then
	 FAIL2BAN="${green}[FAIL2BAN-ON]${normal}"
    else
	return 0
	 #FAIL2BAN="${grey}[FAIL2BAN-OFF]${normal}"
	fi
     else
	 return 0
	 # FAIL2BAN="${grey}[FAIL2BAN-OFF]${normal}"
fi
  }

chk_ssh_port_ () { 
#1 Checl selinux if up or down
SSHPORTCHK=`grep -e "^Port" /etc/ssh/sshd_config | wc -l`
SSHPORTCHK1=`grep -e "^Port" /etc/ssh/sshd_config`
if [ "$SSHPORTCHK" == 1 ] ;
  then
    SSHPORTBAN="${green}[SSH $SSHPORTCHK1]${normal}"
      else
    SSHPORTBAN="${green}[SSH Port 22]${normal}"
fi
}

chk_httpd_port_ () { 
#1 Checl selinux if up or down
UBUNTUHTTPD=`pgrep -x apache2 | wc -l`
CENTOSHTTPD=`pgrep -x httpd | wc -l`
CHKNGINX=`pgrep -x nginx | wc -l`
CHKTOMCAT=`ps -ef | awk '/[t]omcat/{print $2}' | wc -l`
if [ "$UBUNTUHTTPD" != 0 ] || [ "$CENTOSHTTPD" != 0 ]  || [ "$CHKTOMCAT" != 0 ]  ;
  then
    HTTPDBAN="${green}[APACHE]${normal}"
	elif  [ "$CHKNGINX" != 0 ] ;
	 then
	  HTTPDBAN="${green}[NGINX]${normal}"
	  elif  [ "$CHKTOMCAT" != 0 ] ;
	 then
	  HTTPDBAN="${green}[TOMCAT]${normal}"
	 else
	 return 0
      #HTTPDBAN="${grey}[WEB-SRV]${normal}"
fi
}

chk_php_v_ () { 
PHPCHK2=`ls /usr/bin | grep php | wc -l`
if [ "$PHPCHK2" != 0 ] ;
  then
  PHPCHK=`php -v | grep -Po '(?<=^PHP )[^ ]+'`
  PHPCHK1=`echo "PHP $PHPCHK"`
    PHPBAN="${green}[$PHPCHK1]${normal}"
      else
	  return 0
    #PHPBAN="${grey}[PHP]${normal}"
fi
} 

chk_mysql_ () { 
#1 Checl selinux if up or down
# MYSQLCHK=`ls /var/lib/mysql/ | wc -l`
# MYSQLCHK1=`systemctl status mariadb | grep -o "Active: active" | wc -l`
MYSQLCHK=`ps -ef | grep [m]ysql | wc -l`
if [ "$MYSQLCHK" != 0 ];
  then
    MYSQLBAN="${green}[MYSQL]${normal}"
      else
	  return 0
    #MYSQLBAN="${grey}[MYSQL]${normal}"
fi
}
 
 chk_asterisk_ () { 

ASTERISKCHK=`ps -ef | grep [a]sterisk | wc -l`
if [ "$ASTERISKCHK" != 0 ];
  then
    ASTERISBAN="${green}[ASTERISK]${normal}"
      else
	  return 0
    #MYSQLBAN="${grey}[MYSQL]${normal}"
fi
}
 
chk_mongo_ () { 
#1 Checl selinux if up or down
MONGOCHK=`ps -ef | grep [m]ongo | wc -l`
if [ "$MONGOCHK" != 0 ];
  then
    MONGOBAN="${green}[MONGO]${normal}"
      else
	  return 0
    #MONGOBAN="${grey}[MONGO]${normal}"
	fi
} 

chk_postgres_ () { 
#1 Checl selinux if up or down
POSTGRESCHK=`ps -ef | grep [p]ostgres | wc -l`
if [ "$POSTGRESCHK" != 0 ];
  then
    POSTGRESBAN="${green}[POSTGRES]${normal}"
      else
	  return 0
    #POSTGRESBAN="${grey}[POSTGRES]${normal}"
	fi
} 

chk_samba_ () { 
#1 Checl selinux if up or down
SMBCHK=`ps -ef | grep [s]mb | wc -l`
if [ "$SMBCHK" != 0 ];
  then
    SAMBABAN="${green}[SAMBA]${normal}"
      else
	  return 0
    # SAMBABAN="${grey}[SAMBA]${normal}"
	fi
} 

chk_os_ () { 
#1 Checl selinux if up or down
SANGOMA=`awk -F= '/^NAME/{print $2}' /etc/os-release | grep -o Sangoma | wc -l`
if [ "$CENTOS" == 1 ];
  then
  CENTOS=1
    CENTOSBAN=`echo -e "[CentOS]"`
	elif [ "$SANGOMA" == 1 ] ;
      then
        CENTOS=1
        CENTOSBAN=`echo -e "[CentOS Sangoma FreePBX]"`
		 
      else
    UBUNTU1=`awk -F= '/^NAME/{print $2}' /etc/os-release | grep -o Ubuntu `
	UBUNTUBAN=`echo -e "[$UBUNTU1]"`
	fi
} 

chk_samba_users_ () { 
#1 Checl selinux if up or down

SMBCHK=`ps -ef | grep [s]mb | wc -l`
if [ "$SMBCHK" != 0 ];
  then
  
SMBUSERS=`pdbedit -L | awk -F':' '{print $1 }' | wc -l`
SAMBAUSERSBAN=`echo "${green}${fgred}$SMBUSERS${green} ${green}Samba users${normal}"`
fi

} 

chk_sys_active_users_ () { 
#1 Checl selinux if up or down
SYSUSERSCHK=`cat /etc/passwd | grep -v nologin | grep -v false | grep -v sync | awk -F':' '{ print $1 }' | wc -l`
SYSTEMUSERSBAN=`echo "${green}${fgred}$SYSUSERSCHK${green} Regular users${normal}"`
} 

chk_root_users_ () {
echo  > $ROOTUSERSTMPLOG
echo  > $ROOTUSERSTMPLOG1
getu1=`getent group wheel | cut -d: -f4`
getu2=`getent group sudo | cut -d: -f4`
getu3=`getent group admin | cut -d: -f4`
getu4=`sudo cat /etc/sudoers | grep --color=always -o -P '(?<=(^)).*(?=ALL=)' | grep -v % | grep -v "#"`
echo $getu1 >> $ROOTUSERSTMPLOG
echo $getu2 >> $ROOTUSERSTMPLOG 
echo $getu3 >> $ROOTUSERSTMPLOG
echo $getu4 >> $ROOTUSERSTMPLOG
sed -i '/^$/d' $ROOTUSERSTMPLOG
sed -i "s/,/ /g" $ROOTUSERSTMPLOG
#getu5=`cat stam1.log | tr ' ' "\n" > stam2.log`
sed '$d'  $ROOTUSERSTMPLOG1 > $ROOTUSERSTMPLOG
printf %b '\033[m'
ROOTUSERSCHK=`cat $ROOTUSERSTMPLOG |  wc -l`
printf %b '\033[m'
ROOTUSERSBAN=`echo " ${green}${fgred}$ROOTUSERSCHK${green} Admin users${normal}"`
}
 
chk_time_ () {
 
 unset PERMISIONFOLDER
 local CHKTIME=`date +"%M"`
 local CHKTIME1=`curl -s --head http://google.com | grep ^Date: | sed 's/Date: //g' | awk '{print  $5 }' | grep -o -P '(?<=(:)).*(?=:)'`
 if [ "$CHKTIME" != "$CHKTIME1" ];
 then 
logo_stop_time_
sudo ntpdate -u 0.asia.pool.ntp.org
 tput reset
 
clear && echo && clear
 else
  tput reset
  
clear && echo && clear
 start_
fi
}

chk_msdomain_ () { 
#1 Checl selinux if up or down
DOMAINTOLEACHEK=`ls /usr/sbin | grep realm | wc -l`
if [ "$DOMAINTOLEACHEK" != 0 ];
  then
DOMAINTOLEAV=`realm list | grep domain-name | awk '{print $2}' | wc -l`
if [ "$DOMAINTOLEAV" != 0 ];
  then
    DOMAINBANN="${green}[$DOMAINTOLEAV]${normal}"
      else
	  DOMAINBANN="${green}[WorkGroup]${normal}"
	fi
	else
	DOMAINBANN="${green}[WorkGroup]${normal}"
	fi
} 

########### WP automation

function wp_automation_site_ () {
###----------------------------------------------------------Site Automation Manual---------------------------------###
#--1.prerequisitions
#--2.Permanent Variables
#--3.Functions
#--4.Install Clean WordPress + Name with new DB
#--5.Create subdomain purge if not exist
#--6.Update users 'System' and 'DEV' + send email with new user password
#--7.Permissions
#--8.Create wp-config.php file
#--9.Hosts file
#--10.Create new file binding to httpd 
#--11.API to CloudFlare
#--12.Check site state
#--13.Move htaccess and wps-hide-login to place
#--14.Remove scraps
#--15.Run Functions
#--16.FIN

###-------------------------------------------------------------prerequisitions:
#--Centos 7
#--MySQL User: creator
#--finito.sql Template
#--Apache right permissions

#--Compiled:
#yum -y install net-tools 
#yum -y install nano
#yum -y install rsync
#yum install htop -y
#yum install telnet -y
#yum install php-gd -y

#--Installation vm-tools
yum --enablerepo=extras install epel-release -y
yum install -y open-vm-tools
systemctl start vmtoolsd.service
systemctl enable vmtoolsd.service
TMP62="/tmp/mysql-tmp/srvlist/tmp/$rgba.log"
var3=62
#------------------------------------------------------------ Permanent Variables
#-- Import from file
DM=$WWW

#-- Addresses
#WAN="$(ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p' | sed -e 's/^192.*//g' | xargs echo -n | tr " "  "\n")"
WAN="31.168.178.28" && rgba=""
IP="$(ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1' | grep 192.168)"

# if [ "$WAN" != "82.199.85.156" ];
# then
# PATHTO="var/www"
# else
# PATHTO="home/devjohn"
# fi

#-- Httpd directories
DIR=$PATHTO/$DB
DIR2=\"${DIR}\"

#-- DB
DB="$SD${WWW//.}"
VMP="$(openssl rand -base64 20)"
SP="$(openssl rand -base64 20)"
LWP="$PATHTO/wordpress"
SQLB="$TMP/finito.sql"
hostname="$(hostname)"

#-- System Admin Mail
SM="litansh@gmail.com"

#-----------------------------------------------------------------Functions

#-------------------------------------------------------------Alert definition
function alertdef_ () {

DEVM="litansh@gmail.com"
 #if [ "$WWW" == "82.199.85.156" ];
 #then
  #DEVM="marketing@kawalee.com"
 #else
  #DEVM="tal@cglms.com"
  #exit 0 
 #fi
}

#--------------------------------------------------------User and cert definition
function usrdef_ () {

DBU="$(sed -n '1p' $TMP62$var3)"
DBP="$(sed -n '2p' $TMP62$var3)"
DC="$(grep -m1 'SSLCertificateFile' /etc/httpd/conf/*.conf)"
DK="$(grep -m1 'SSLCertificateKeyFile' /etc/httpd/conf/*.conf)"
if [ -z "$DC" ] || [ -z "$DK" ]; then
 DC="$(grep -m1 'SSLCertificateFile' /etc/httpd/conf.d/*.conf)"
 DK="$(grep -m1 'SSLCertificateKeyFile' /etc/httpd/conf.d/*.conf)"
fi
}

#----------------------------------------------------- Check if exists in httpd.conf
function sitexists_ () {

exist="$(cat /etc/httpd/conf/*.conf | grep "$SD.$WWW" | wc -l)"
existd="$(cat /etc/httpd/conf.d/*.conf | grep "$SD.$WWW" | wc -l)"
if [ "$exist" != "0" ] && [ "$existd" != "0" ]; then
 echo "Site Already exists!!!"
 echo "${SD}.${WWW} Already exists in httpd!!!, user tried to create at $("date")" | mail -s "${SD}.${WWW} already exists in ${IP}" ${SM}
 exit 0
fi
}

#--------------------------------------------------- Check SOME prerequisitions status 
function prereq_ () { 

SSLSTAT="$(openssl version | grep "OpenSSL" | wc -l)"
if [ "$SSLSTAT" == "0" ]; then
 yum install mod_ssl -y
fi

JQSTAT="$(jq --help | grep "foo" | wc -l)"
if [ "$JQSTAT" == "0" ]; then
 yum install jq -y
fi

HTTPDSTAT="$(systemctl status httpd | grep "active" | wc -l)"
if [ "$HTTPDSTAT" == "0" ]; then
 yum -y install httpd
 systemctl start httpd.service
 systemctl enable httpd.service
 systemctl restart httpd
 HTTPDSTAT="$(systemctl status httpd | grep "active" | wc -l)"
 if [ "$HTTPDSTAT" == "0" ]; then
 echo "Please check! $hostname apache status" | mail -s "${IP} sent bad httpd status!" ${SM}
 fi
fi

MARIASTAT="$(systemctl status mariadb | grep "active" | wc -l)"
if [ "$MARIASTAT" == "0" ];
then
systemctl restart mariadb
MARIASTAT="$(systemctl status mariadb | grep "active" | wc -l)"
MARIAINSTALL="$(top | grep mysqld | wc -l)"
 if [ "$MARIASTAT" == "0" ] && [ "$MARIAINSTALL" =="0" ]; then
   yum -y install mariadb-server mariadb
   systemctl start mariadb.service
   systemctl enable mariadb.service
 fi
fi

mysql_secure_installation <<EOF

!qazxsw2
!qazxsw2
y
n
n
Y
EOF

mysql -u root -p'n' <<-"EOF"
GRANT ALL ON *.* TO 'root'@'localhost';
GRANT ALL ON *.* TO 'root'@'%';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
EOF

systemctl restart mariadb
MARIASTAT="$(systemctl status mariadb | grep "active" | wc -l)"
 if [ "$MARIASTAT" == "0" ]; then
  systemctl restart mariadb
 fi
 if [ "$MARIASTAT" == "0" ]; then
   echo "Please check! $hostname mariadb status" | mail -s "${IP} sent bad mariadb status!" ${SM}
 fi

PHPSTAT="$(php -v | grep "Copyright" | wc -l)"
if [ "$PHPSTAT" == "0" ]; then
 yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm -y
 yum install http://rpms.remirepo.net/enterprise/remi-release-7.rpm -y
 yum install yum-utils -y
 yum-config-manager --enable remi-php73 -y
 yum remove php php-opcache php-cli php-common php-gd php-ldap php-mysql php-odbc php-pdo php-pear php-pecl-apc php-pecl-memcache php-pgsql php-soap php-xml php-xmlrpc php-mbstring php-mcrypt -y
 yum install php php-opcache php-cli php-common php-gd php-ldap php-mysql php-odbc php-pdo php-pear php-pecl-apc php-pecl-memcache php-pgsql php-soap php-xml php-xmlrpc php-mbstring php-mcrypt -y
 systemctl restart httpd
fi
}

#------------------------------------------------Install Clean WordPress + Name with new DB
function CWP_ () {

cd /$PATHTO
yum install wget unzip -y
wget http://wordpress.org/latest.zip
unzip -q latest.zip -d /$PATHTO
mv ${LWP} "$PATHTO/${DB}"
}

#----------------------------------------------------Create subdomain purge if not exist
function purgedomain_ () {

subdir="$path/purge$DB"
existsd="$(ls -d $path/*/ | grep $subdir | wc -l)"
if [ "$existsd" == "0" ]; then
  mkdir -p $path/purge$DB
fi

cd $path/purge$DB
cat > $path/purge$DB/index.html <<-"EOF"
<!DOCTYPE html>
<html>
<link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
 <body>
 <h2>Purge your Domain:</h2>
  <table style="width:100%">
     <form action="../purgeadmin/purge.php" method="POST">
      <select name="domain">
         <option value="DDDDDDDDDDD">Purge DDDDDDDDDDD Cache</option>
         </select>
         <input type="submit" value="Purge Cache">
      <br>
    
   </form>
  </table>
 </body>
<BR>
</html>
EOF

fullsite="$SD.$WWW"
sed -i "s/DDDDDDDDDDD/$fullsite/g" $path/purge$DB/index.html

cat > $path/purge$DB/purge.php <<-"EOF"
<?php 
$link .= "$_SERVER[HTTP_HOST]"; 
echo $link;
?>

<?php
#
# Parameters
$dir = "$path/paramdir";
$file_to_write = "paramfile";
$content_to_write_email = $_POST['email'];
$content_to_write_key = $_POST['key'];

#
# Checks if parameter directory already exists and creates
if( is_dir($dir) === false )
{
mkdir($dir, 0777, TRUE);
 $file = fopen($dir . '/' . $file_to_write,"w");
  fwrite($file, $link);
  fwrite($file, "\n");
  fwrite($file, $content_to_write_email);
  fwrite($file, "\n");
  fwrite($file, $content_to_write_key);
  fwrite($file, "\n");
 fclose($file);
shell_exec('sudo ./purge.sh');
header('Location: https://'.$link.'/purge.txt');
}
else
{
 echo "Directory already exists!!!";
}
?>

EOF

cat > $path/purge$DB/purge.sh <<-"EOF"
#!/bin/bash
#!/bin/sh -

#--Check JQ is installed
JQSTAT="$(jq --help | grep "foo" | wc -l)"
if [ "$JQSTAT" == "0" ];
then
yum install jq -y
fi

#--Variables
sub="$(sed -n '1p' $path/paramdir/paramfile)"
prefix="purge."
domain=${sub#"$prefix"}

mv $path/paramdir $path/purge$domain
rm -rf $path/purge$domain/purge.txt

email="$(sed -n '2p' $path/purge$domain/paramdir/paramfile)"
key="$(sed -n '3p' $path/purge$domain/paramdir/paramfile)"

#--Get Zone ID of domain
cd /
dm="$(curl -s -X GET "https://api.Cloudflare.com/client/v4/zones/?per_page=100" -H "X-Auth-Email: $email" -H "X-Auth-Key: $key" -H "Content-Type: application/json" | jq -r '.result[] | "\(.id) \(.name)"' | grep -w "$domain" >> $path/purge$domain/tmp.txt | grep $domain)"
zoneid=${dm::32}

#--API to purge cache
cat >$path/purge$domain/postapi.sh <<-"EOF"
#!/bin/bash
curl -X POST "https://api.cloudflare.com/client/v4/zones/ZZZZZZ/purge_cache" -H "X-Auth-Email: EEEEEEEEE -H "X-Auth-Key: kkkkkkk" -H "Content-Type:application/json" --data '{"purge_everything":true}' >> $path/purge.txt
"EOF"

sed -i "s/EEEEEEEEE/$email/g" $path/purge$domain/postapi.sh
sed -i "s/kkkkkkk/$key/g" $path/purge$domain/postapi.sh
sed -i "s/ZZZZZZ/$zoneid/g" $path/purge$domain/postapi.sh

mv $path/purge.txt $path/purge$domain

chmod -R 755 $path/purge$domain/postapi.sh
chmod +x $path/purge$domain/postapi.sh
cd $path/purge$domain && sh postapi.sh

rm -rf $path/purge$domain/paramdir
rm -rf $path/purge$domain/postapi.sh
rm -rf $path/purge$domain/tmp.txt

EOF

cat > /etc/httpd/conf.d/purge$DB.conf <<-"EOF"
<VirtualHost *:443>
SSLEngine On
SSLCertificateFile ${DC}
SSLCertificateKeyFile ${DK}
SSLProtocol all -SSLv2 -SSLv3
SSLHonorCipherOrder on
SSLCipherSuite SSLCST
DocumentRoot ${DIR2}
ServerName ${SD}.${WWW}
ServerAlias ${SD}.${WWW}
#Header edit Set-Cookie ^(.*)$ num;HttpOnly;Secure
<Directory ${DIR2}>
</Directory>
</VirtualHost>

EOF

sed -i 's/num/$1/g' /etc/httpd/conf.d/purge$DB.conf
sed -i 's/SSLCST/"EECDH+ECDSA+AESGCM EECDH+aRSA+AESGCM EECDH+ECDSA+SHA384 EECDH+ECDSA+SHA256 EECDH+aRSA+SHA384 EECDH+aRSA+SHA256 EECDH+aRSA+RC4 EECDH EDH+aRSA RC4 !aNULL !eNULL !LOW !3DES !MD5 !EXP !PSK !SRP !DSS"/g' /etc/httpd/conf.d/purge$DB.conf
sed -i 's/headert/Header always edit Set-Cookie "(?i)^((?:(?!;\s?HttpOnly).)+)$" "$1; HttpOnly/g' /etc/httpd/conf.d/purge$DB.conf
sed -i 's/headere/Header always edit Set-Cookie "(?i)^((?:(?!;\s?secure).)+)$" "$1; secure/g' /etc/httpd/conf.d/purge$DB.conf
chmod +x $path/purge$DB/purge.sh
chown -R apache:apache $path/purge$DB
.$path/purge$DB/purge.sh
}

#-------------------------------------Update users 'System' and 'DEV' + send email with new user password
function db_ () {

mysql -ucreator -p'crlcmssw2!qazx!qazxsw2' -e "CREATE DATABASE ${DB};GRANT ALL PRIVILEGES ON ${DB}.* TO '${DBU}'@'localhost';FLUSH PRIVILEGES;" 
mysql -ucreator -p'crlcmssw2!qazx!qazxsw2' ${DB} <${SQLB}
mysql -ucreator -p'crlcmssw2!qazx!qazxsw2' -e "USE ${DB}; UPDATE wp_options SET option_value='${SD}.${WWW}' WHERE option_name = 'home'; UPDATE wp_options SET option_value='https://${SD}.${WWW}' WHERE option_name = 'siteurl'; UPDATE wp_options SET option_value='${SD}.${WWW}' WHERE option_name = 'blogname';"
mysql -ucreator -p'crlcmssw2!qazx!qazxsw2' -e "USE ${DB}; UPDATE wp_users SET user_pass=MD5('${VMP}') WHERE user_login= 'DEV';"
mysql -ucreator -p'crlcmssw2!qazx!qazxsw2' -e "USE ${DB}; UPDATE wp_users SET user_pass=MD5('${SP}') WHERE user_login= 'System';"
mysql -ucreator -p'crlcmssw2!qazx!qazxsw2' -e "USE ${DB}; UPDATE wp_users SET option_value='DEV' WHERE option_name = 'user_login'; UPDATE wp_users SET option_value='${VMP}' WHERE option_name = 'user_pass'; UPDATE wp_users SET option_value='DEV' WHERE option_name = 'user_nicename'; UPDATE wp_users SET option_value='${DEVM}' WHERE option_name = 'user_email';"

echo "https://${SD}.${WWW}/wp-admin User:DEV Pass:${VMP}" | mail -s "${SD}.${WWW} has been created in ${IP}" ${DEVM}
echo "https://${SD}.${WWW}/wp-admin User:System Pass:${SP}" | mail -s "${SD}.${WWW} has been created in ${IP}" ${SM}
#echo "https://${SD}.${WWW}/wp-admin User:System Pass:${SP}" | mail -s "${SD}.${WWW} has been created in ${IP}" ${SHM}
}

#----------------------------------------------------------------Permissions
function perm_ () {

chown -R apache:apache $PATHTO/$DB
find $PATHTO/$DB/* -type d -exec chmod 755 '{}' \;
find $PATHTO/$DB/* -type f -exec chmod 644 '{}' \;
find $PATHTO/$DB/* -type f -iname "*.sh" -exec chmod +x {} \;
echo "Permissions Set"
}

#---------------------------------------------------------Create wp-config.php file
function wpconfig_ () {

cat >$PATHTO/${DB}/wp-config.php <<-"EOF"
define('WP_ALLOW_MULTISITE', true);
/**#@+
* Authentication Unique Keys and Salts.
*
* Change these to different unique phrases!
* You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
* You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
*
* @since 2.6.0
*/
define('AUTH_KEY',         '-h=+@tP]ZL&&%1cBx_tKj);T.T]e`sO(E}<|NJ$Qwe:0X;5W2^*sElcq1T4.c0mz');
define('SECURE_AUTH_KEY',  'Jm#0J-5?gJiVBzYw+^$;.`8$$6Wt~AY)yjiG,7h4-_xY/v-JtmM-aDw4[VDEqF)-');
define('LOGGED_IN_KEY',    'iwb*2);+T*&5;M[.k)>jBO++8yhMKQx_0L5)x-LrKa`hkwizle) .5WE&Z_pHI4c');
define('NONCE_KEY',        '%h+hOP(9C[o|]EH-XY2)(vGW;;wG]pP|G|JnE#Y)lKG#HETI|ALBaP/r:G;j:|8_');
define('AUTH_SALT',        ')7M-%2Zjv?zj-yI(#q[5ac0w+4Tdk|RtE$YF&ZC%KH/$J|k<%E|Rsl[~o[C9Rm0Q');
define('SECURE_AUTH_SALT', 'yMn/CAa;9<FD1~?FmF_)ur{Rjj?M<?Fn::uioY]Xe,+-$n+cEh}RfI&D+QkS2+Hz');
define('LOGGED_IN_SALT',   '*)Y}-s4.L./<y`vvFvi/_7}mj,i7G#ZrV[b0*StJ&; ;Q>cy,Mxbr~1>bOW7H_*B');
define('NONCE_SALT',       '@I%EPr[1@t+hMd_d}TWLA_D|;|3bj.b|60vD.aeNcu^i=V0.-P{f+7RwAUB@a<4]');


/**#@-*/

/**
* WordPress Database Table prefix.
*
* You can have multiple installations in one database if you give each
* a unique prefix. Only numbers, letters, and underscores please!
*/
$table_prefix  = 'wp_';

/**
* For developers: WordPress debugging mode.
*
* Change this to true to enable the display of notices during development.
* It is strongly recommended that plugin and theme developers use WP_DEBUG
* in their development environments.
*
* For information on other constants that can be used for debugging,
* visit the Codex.
*
* @link https://codex.wordpress.org/Debugging_in_WordPress
*/

/*
* Handle multi domain into single instance of wordpress installation
*/

        define('WP_HOME', 'http://' . $_SERVER['HTTP_HOST']);
                define('WP_SITEURL', 'http://' . $_SERVER['HTTP_HOST']);
                
define('WP_DEBUG', false);
/*define('WP_DEBUG_LOG', true);
define('WP_DEBUG_DISPLAY', false);
@ini_set('display_errors', 0);*/

define( 'WPCF7_AUTOP', false );

define( 'WP_AUTO_UPDATE_CORE', true );

define('WP_MEMORY_LIMIT', '256M');
define('WP_MAX_MEMORY_LIMIT', '256M');

define('WP_TEMP_DIR','/tmp-tradenet');

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
                define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
EOF

echo "
<?php
/**
* The base configuration for WordPress
*
* The wp-config.php creation script uses this file during the
* installation. You don't have to use the web site, you can
* copy this file to "wp-config.php" and fill in the values.
*
* This file contains the following configurations:
*
* * MySQL settings
* * Secret keys
* * Database table prefix
* * ABSPATH
*
* @link https://codex.wordpress.org/Editing_wp-config.php
*
* @package WordPress
*/

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', '${DB}');

/** MySQL database username */
define('DB_USER', '${DBU}');

/** MySQL database password */
define('DB_PASSWORD', '${DBP}');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

" | cat - $PATHTO/${DB}/wp-config.php >temp && mv temp $PATHTO/${DB}/wp-config.php
}

#----------------------------------------------------------------Hosts file
function hosts_ () {

echo -e "${WAN}  ${SD}.${WWW}" >>/etc/hosts
echo -e "${IP}  ${SD}.${WWW}" >>/etc/hosts
}

#-------------------------------------------------------------Binding to httpd
function httpd_ () {

#--443 Binding:
echo -e "

<VirtualHost *:443>
SSLEngine On
SSLCertificateFile ${DC}
SSLCertificateKeyFile ${DK}
SSLProtocol all -SSLv2 -SSLv3
SSLHonorCipherOrder on
SSLCipherSuite SSLCST
DocumentRoot ${DIR2}
ServerName ${SD}.${WWW}
ServerAlias ${SD}.${WWW}
headert
headere
<Directory ${DIR2}>
</Directory>
</VirtualHost>
" >>/etc/httpd/conf.d/$SD$WWW.conf

#--80 Binding:
#echo -e "
#
#<VirtualHost *:80>
#DocumentRoot ${DIR2}
#ServerName ${SD}.${WWW}
## headert
## headere
#<Directory ${DIR2}>
#</Directory>
#</VirtualHost>
#" >>/etc/httpd/conf.d/$SD$WWW.conf
#
sed -i 's/num/$1/g' /etc/httpd/conf.d/$SD$WWW.conf
sed -i 's/SSLCST/"EECDH+ECDSA+AESGCM EECDH+aRSA+AESGCM EECDH+ECDSA+SHA384 EECDH+ECDSA+SHA256 EECDH+aRSA+SHA384 EECDH+aRSA+SHA256 EECDH+aRSA+RC4 EECDH EDH+aRSA RC4 !aNULL !eNULL !LOW !3DES !MD5 !EXP !PSK !SRP !DSS"/g' /etc/httpd/conf/conf.d/$SD$WWW.conf
sed -i 's/headert/Header always edit Set-Cookie "(?i)^((?:(?!;\s?HttpOnly).)+)$" "$1; HttpOnly/g' /etc/httpd/conf.d/$SD$WWW.conf
sed -i 's/headere/Header always edit Set-Cookie "(?i)^((?:(?!;\s?secure).)+)$" "$1; secure/g' /etc/httpd/conf.d/$SD$WWW.conf
}

#-------------------------------------------------------------API to CloudFlare
function api_ () {

IDTMP="$(curl -s -X GET "https://api.Cloudflare.com/client/v4/zones/?per_page=100" -H "X-Auth-Email: litansh@gmail.com" -H "X-Auth-Key: 000ff94c063a8ad911ac223ea230dfd44aff1" -H "Content-Type: application/json" | jq -r '.result[] | "\(.id) \(.name)"' | grep -w "$WWW" | sed "s/$WWW\b//g")"
#IDTMP="$(curl -s -X GET "https://api.Cloudflare.com/client/v4/zones/?per_page=100" -H "X-Auth-Email: gennady@cglms.com" -H "X-Auth-Key: 865acec931ba06e7b65dbb4102c30720cfad2" -H "Content-Type: application/json" | jq -r '.result[] | "\(.id) \(.name)"' | grep -w "$WWW" | sed "s/$WWW\b//g")"
ID=${IDTMP:0:32}
cat >$PATHTO/postapi.sh <<-"EOF"
#!/bin/bash
curl -X POST "https://api.cloudflare.com/client/v4/zones/IDTMP/dns_records" -H "X-Auth-Email: litansh@gmail.com" -H "X-Auth-Key: 000ff94c063a8ad911ac223ea230dfd44aff1" -H "Content-Type:application/json" --data '{"type":"A","name":"SDTMP","content":"WANTMP","ttl":120,"proxied":true}'
EOF
#curl -X POST "https://api.cloudflare.com/client/v4/zones/IDTMP/dns_records" -H "X-Auth-Email: gennady@cglms.com" -H "X-Auth-Key: 865acec931ba06e7b65dbb4102c30720cfad2" -H "Content-Type:application/json" --data '{"type":"A","name":"SDTMP","content":"WANTMP","ttl":120,"proxied":true}'

sed -i "s/IDTMP/$ID/g" $PATHTO/postapi.sh
sed -i "s/SDTMP/$SD/g" $PATHTO/postapi.sh
sed -i "s/WANTMP/$WAN/g" $PATHTO/postapi.sh
chmod -R 755 $PATHTO/postapi.sh
chmod +x $PATHTO/postapi.sh
cd /$PATHTO && sh postapi.sh
cd /
}

#--------------------------------------------------------------Check site state
function curl_ () {

sleep 1m
live="$(curl -Is https://$SD.$WWW | head -1 | grep "OK" | wc -l)"

if [ "$live" -eq 0 ];
then
  echo "https://$SD.$WWW has been created in $IP" | mail -s 'New Wordpress Site IS UP' $SM
  exit 1
else
  echo "https://$SD.$WWW IS NOT FUNCTIONING!!! $IP" | mail -s 'New Wordpress Site NOT FUNCTIONING!!!' $SM
fi
}

#---------------------------------------------------Move htaccess and wps-hide-login to place
function moveto_ () {

mv $PATHTO/wps-hide-login ${DIR2}/wp-content/plugins
mv $PATHTO/.htaccess ${DIR2}
}

#-------------------------------------------------------------- Remove scraps
function rmrf_ () {

rm -rf $PATHTO/paramfile
rm -rf $PATHTO/latest.zip
rm -rf $PATHTO/latest.zip.*
rm -rf $PATHTO/postapi.sh
exit 0
}

#-------------------------------------------------------------- Run functions

    #--Define user department alert
    ##alertdef_
    #--Define DB user and CRT
    ##usrdef_
    #--Check if site exists in httpd.conf
    ##sitexists_
    #--Check SOME Prerequesitions
    ##prereq_
    #--Clean WordPress Install
    ##CWP_
    #--Create subdomain purge if not exist
    ##purgedomain_
    #--Create DB and update users DEV + System
    ##db_
    #--Create wp-config + DB configurations
    ##wpconfig_
    #--Permissions
    ##perm_
    #--Update hosts file
    ##hosts_
    #--httpd update
    ##httpd_
    #--Restart httpd
    ##systemctl restart httpd
    #--Run API to CloudFlare
    ##api_
    #--Run CURL
    ##curl_
    #--Move htaccess and wps-hide-login to place
    ##moveto_
    #--Remove scraps
    ##rmrf_
}

########### Banners

function unset_banner_ (){
    unset BANNER
	unset FIND
	unset GREPBANN
	unset COUNTFIND
} 

function pause_witout_exit_ () {
  local C1="$(printf "\n\t\t\t\t${menu}[ ${number}Enter ${menu}] ${menu}${normal}\n")"

  read -sn 1 -p "$C1" fackEnterKey 
 }

function logo_findme_ () {
cat << "EOF"
                                             _,.
                                           ,` -.)
                                          '( _/'-\\-.               
                                         /,|`--._,-^|            ,     
                                         \_| |`-._/||          ,'|       
                                           |  `-, / |         /  /      
                                           |     || |        /  /       
                                            `r-._||/   __   /  /  
                                        __,-<_     )`-/  `./  /
                                       '  \   `---'   \   /  / 
                                      /    |           |./  /  
                                      \    /  WPauto   //  /     
                                      \_/' \          |/  /         
                                        |    |   _,^-'/  /              
                                        |    , ``  (\/  /_        
                                         \,.->._    \X-=/^         
                                         (  /   `-._//^`  
                                          `Y-.____(__}              
                                           |     {__)           
                                                  ()`     
EOF
}

function call_allert_title_ () {
    clear && echo && clear
	echo -e "${menu}${menu1}--------------------------------------------------------------------------------------------------------${normal}"
	echo -e "${menu}${menu1}                                       ${bgwhite}${menu}Create New WP Site${menu}${menu1}                                               ${normal}"
	echo -e "${menu}${menu1}--------------------------------------------------------------------------------------------------------${normal}"
	echo -e "${menu}$BANNER${normal}${green}${normal}${green}$GREPBANN${normal}"
	unset TIMEMENUBANNER
} 

function tmpusr_tmppass_ () {
TMPPASSWD="$(cat $TMP)"
TMPUSR="$(cat $TMP1)"
local CHKUSR="$(ls /tmp/mysql-tmp | grep  "mysql-tmp23455.log" | wc -l)"
local CHKPSSW="$(ls /tmp/mysql-tmp | grep  "mysql-tmp455.log" | wc -l)"
local CHKUSR1="$(cat  /tmp/mysql-tmp/mysql-tmp23455.log | wc -L)"
local CHKPSSW1="$(cat  /tmp/mysql-tmp/mysql-tmp23455.log | wc -L)"
if [ "$CHKUSR" == 0 ] || [ "$CHKPSSW" == 0 ] || [ "$CHKUSR1" -lt 4 ] || [ "$CHKPSSW1" -lt 4 ] ;
then
# echo > $TMP
# echo > $TMP1
chk_root_exist_passwd_ && return
fi
 
}

# function valid_dbname_ () {
# local C1="$(printf "${menu}Enter Database name: ${normal}\n")"
# while true;
 # do 
  	# getdbbefore_
    # echo -e "${menu}Enter valid Database name ${fgred}without ${normal}${menu}spesial characters ${normal}\n"
	# echo -e "${menu}For example:${normal}"
    # echo -e	"${green}       domain_com ${normal}${menu}=${green}:)" 
	# echo -e "${fgred}       domain.com ${normal}${menu}= ${fgred}:( ${normal}\n"
    # echo
    # read -e -p "$C1" dbname
	# back_
    # echo
    # if [[ $dbname == *['!'@#\;:\ $%^\&*(.)+]* ]] ; 
    # then
    # echo
	# echo -e "${menu}Database ${blink}${fgred}$dbname ${normal}${menu}is invalid${normal}"
	# echo
	# sleep 4
	# else   
    # break
    # fi
    # done
    # #echo -e "Database name "$dbname" is valid"
    # clear
    # 
    # }

########### Search functions

function getdbbefore_ () {
ippp="192.168.260.200"
rrr="lol"
dbcreatora="$(sed -n '1p' /tmp/mysql-tmp/srvlist/tmp/listing/www/$ippp/$rrr.log)" 
dbcreatorpassa="$(sed -n '2p' /tmp/mysql-tmp/srvlist/tmp/listing/www/$ippp/$rrr.log)" 
echo
echo "        Users         "
mysql -u$dbcreatora -p$dbcreatorpassa -N -e  'show databases;'

}

function comparison_ () {
 i=1 && compare="ok"
 lines="$(wc -l /wwwdirtmp.txt | grep -o '^\S*')"
 while IFS= read -r line
  do
   var[$i]="$(echo $line | perl -p -e 's/^.*?#//' | awk -F# '{print $1}')"
   if [ $i == 1 ]; then
    i=$((i+1)) && x=$((i-1))
   elif [ ${var[$i]} == ${var[$x]} ] && [ $i != $lines ]; then
	export compare="ok"
	i=$((i+1)) && x=$((x+1))
   elif [ $i == $lines ] && [ ${var[$i]} == ${var[$x]} ]; then 
    path=$path/${var[$i]}
   else
	export compare="bad"
   fi		 
 done < "/wwwdirtmp.txt"   
}

function find_site_dir_ () {
 grep 'Directory "/' /etc/httpd/conf/*.conf | sed '/</d' | grep -o '\/.*\"' | sed 's#/#\##g' | sed 's/.$//' > /wwwdirtmp.txt
 if [ -s /wwwdirtmp.txt ]; then
  echo ""
 else
  grep 'Directory "/' /etc/httpd/conf.d/*.conf | sed '/</d' | grep -o '\/.*\"' | sed 's#/#\##g' | sed 's/.$//' > /wwwdirtmp.txt
 fi
 compare="ok" && i=1 && path=""
 while [ -s /wwwdirtmp.txt ] && [ $compare == "ok" ]; 
  do
   comparison_  
   cat /wwwdirtmp.txt | cut -d"#" -f3- | tr " " "\n" | sed 's/^/#/' | tr " " "\n" > /wwwtmp.txt && mv -f wwwtmp.txt wwwdirtmp.txt && rm -rf /wwwtmp.txt
  done
 if [ -z "$path" ];then
  path="$(echo "No directory found")"
 fi
}

function getdbusers_ () {
echo
echo "        Databases         "
mysql -udbshow -p'@wsxcde3' -N -e  'select host, user from mysql.user;'

}

function domainlist_ () {
curl -s -X GET "https://api.Cloudflare.com/client/v4/zones/?per_page=100" -H "X-Auth-Email: litansh@gmail.com" -H "X-Auth-Key: 000ff94c063a8ad911ac223ea230dfd44aff1" -H "Content-Type: application/json" | jq -r '.result[] | "\(.id) \(.name)"' | grep -w "litanshamir.com" >>  /$TMP/tmpaa.txt
while read line; do
ALL="$(echo $line)"
DM=${ALL:33:70}
echo "$DM"
done < /$TMP/tmpaa.txt
}

function hostlist_ () {
  TMP66="/tmp/mysql-tmp/srvlist"
  ls $TMP66 > hostlist.txt
  while IFS= read -r line
   do
    if [ "$line" == 'tmp' ]; then
	 echo ""
	else
	 echo "$line"
	fi
   done < "/hostlist.txt" 
}

function confirm_ () {
local C1="$(printf "${menu}Please Confirm (${fgred}y${menu}/n) or [ ${fgred}Enter${menu} ] ${menu}to ${fgred}y ${menu}: ${normal}\n")"
echo 
read -e -p "$C1 " confirmn
back_
if [ -n "$confirmn" ];
then
confirm=$confirmn
printf "$confirm"
else
confirm=y
fi
}

function getdbafter_ () {
echo
echo "        Databases         "
echo "  _______________________"
mysql -u$TMPUSR -p$TMPPASSWD -N -e  'show databases;' | GREP_COLOR='01;32' grep --color=always -e "^" -e "^$dbname" | sed 's/.*/ |- & /' |  sed "s/.$dbname/&     <<-----New database /"
echo "  _______________________"
}

########### Create functions

function create_new_db_title_ () {
clear
echo
    printf "\n${menu}      Create New Database without user         ${normal}\n"
	printf "\n${menu}******************************************${normal}\n"
	}
	
function config_first_time_ () {
  clear
    call_allert_title_
    logo_findme_
 if [ $numero == "0" ]; then
  clear && echo "Done" && num="62" && clear
 else
  clear && num="62" && echo "Done" && clear
 fi
   clear
}

function create_new_db_ () {
call_allert_title_
logo_findme_
local mysqlmenu=2
menudb=3
tmpusr_tmppass_
echo 
create_new_db_title_
valid_dbname_
create_new_db_title_
echo
getdbbefore_
echo
echo -e "                                 ${menu}New Database ${green}$dbname ${menu}will be created.${normal} "
echo
confirm_
if [ "$confirm" == 'y' ]; 
then
mysql -u$TMPUSR -p$TMPPASSWD -N  <<MYSQL_SCRIPT
CREATE DATABASE $dbname;
FLUSH PRIVILEGES;
MYSQL_SCRIPT
clear
echo 
create_new_db_title_
getdbafter_
echo
echo -e "                                 ${menu}New database ${green}$dbname ${menu}created${normal}"
echo
echo
pause       
fi
} 

function create_new_site_ () {
 while true;
 do
  clear
  call_allert_title_
  logo_findme_
  getdbbefore_
  clear
  call_allert_title_
  logo_findme_
  # echo -e "${blink}List of hosts: (IP address is refered to DATABASE host)${normal}"
  # hostlist_
  TMP66="/tmp/mysql-tmp/srvlist/$mysqlserverhost "
  echo -e "\n\t\t\t${menu}Enter full name of new site: (like this: subdomain.domain.com) ${normal}"
  local C1="$(printf "\t\t\t${bggrey}${black}${blink}===>${normal}${menu}: ${normal}")"
  read -e -p "$C1" WWWtemp
  SD="$(echo $WWWtemp | awk -F"." '{print $1}')"
  WWW="$(echo $WWWtemp | cut -d"." -f2,3)"

  IDTMP="$(curl -s -X GET "https://api.Cloudflare.com/client/v4/zones/?per_page=100" -H "X-Auth-Email: gennady@cglms.com" -H "X-Auth-Key: 865acec931ba06e7b65dbb4102c30720cfad2" -H "Content-Type: application/json" | jq -r '.result[] | "\(.id) \(.name)"' | grep -w "$WWW" | sed "s/$WWW\b//g")"
  if [ -z "$IDTMP" ]; then
    clear
	echo -e "\n\n\n\n\n\t\t\t${menu}You entered a ${fgred}${blink}wrong ${normal}${menu} Domain${fgred}${blink}${menu}${normal} - please enter again${normal}"
    sleep 2
  else
   while true;
   do
    clear
    call_allert_title_
    logo_findme_
	echo ""
	echo -e "${blink}List of hosts:${normal}"
    hostlist_
	echo -e "\n\t\t\t${menu}Select host to create the new site:${normal}"
    local C3="$(printf "\t\t\t${bggrey}${black}${blink}===>${normal}${menu}: ${normal}")"
	read -e -p "$C3" WWWhost
	checkhost="$(cat /hostlist.txt | grep $WWWhost)"
	   if [ -z "$checkhost" ]; then
	    clear
	    echo -e "${menu}You entered ${fgred}${blink}wrong ${normal}${menu}host${fgred}${blink}${menu}${normal} please enter again${normal}"
        sleep 2
	   else
	    clear
		call_allert_title_
        logo_findme_
    	echo -e "${blink}\t\t\t\tSite will be created in a few moments..${normal}"
        sleep 10
	   fi
	  done
	## wp_automation_site_ 
  fi
 done
 sleep 1
 clear 
}

function chk_root_exist_passwd_ () {
ctrl_
clear
call_allert_title_
logo_findme_

# local C1="$(printf "\n\t\t\t${menu}Enter MySQL super user: ${normal}\n")"


while true;
 do 
  clear && clear && clear
  call_allert_title_
logo_findme_
    echo -e "\n\t\t\t${number}Step 2${menu}: ${menu}Enter MySQL super user:${normal}"
   local C1="$(printf "\t\t\t        ${bggrey}${black}${blink}===>${normal}${menu}: ${normal}")"
 read -e -p "$C1" usr
 clear && clear && clear
 call_allert_title_
logo_findme_
    echo -e "\n\t\t\t${number}Step 2${menu}: ${menu}Enter MySQL password:${normal}"
   local C2="$(printf "\t\t\t        ${bggrey}${black}${blink}===>${normal}${menu}: ${normal}")"
    read -s -p "$C2" passwd
    local x="$(mysql -u$usr -p"$passwd" -N -e 'SELECT User,Host FROM mysql.user;' | grep localhost | wc -l)"
	clear
    echo
if [ $x == 0 ];
 then
 clear
    echo -e "${menu}You enter ${fgred}${blink}wrong ${normal}${menu}pasword for user${fgred}${blink} "$usr" ${normal}${menu}please enter again${normal}"
    sleep 2
  else
     echo "$usr" > $TMP1
     echo "$passwd" > $TMP
	
	return 0 && break 
	
 fi
done

sleep 1
clear 

}

# # function apply_permissions_ () {
  # while true;
  # do
    # clear
	# call_allert_title_
    # logo_findme_
    # local C1="$(printf "${menu}Enter MySQL user with CREATE permissions: ${normal}\n")"
    # local C2="$(printf "${menu}Enter MySQL database creator passwd: ${normal}\n")"
	# local C3="$(printf "${menu}Enter MySQL Host IP: ${normal}\n")"
     # read -e -p "$C1" dbcreatortmp
	 # read -s -p "$C2" creatorpasswdtmp
	 # echo " "
	 # read -e -p "$C3" mysqlserveriptmp
     # dbcreator="$(sed -n '2p' /tmp/mysql-tmp/srvlist/$mysqlserveriptmp)" 
     # dbcreatorpass="$(sed -n '3p' /tmp/mysql-tmp/srvlist/$mysqlserveriptmp)"  
	 # checkip="$(ls /tmp/mysql-tmp/srvlist | grep "$mysqlserveriptmp" | wc -l)"
     # if [ $dbcreatortmp == $dbcreator ] && [ $dbcreatorpass == $creatorpasswdtmp ] && [ $checkip > 0 ] ; then
       # call_allert_title_
       # logo_findme_
       # getdbbefore_
	   	# echo ""
     	# echo -e "${blink}Create site in a few moments..${normal}"
	   # sleep 10
	   # create_new_site_
     # else
       # clear
	   # echo -e "${menu}You enter ${fgred}${blink}wrong ${normal}${menu}pasword for user${fgred}${blink} with permissions to create database ${normal}${menu}please enter again${normal}"
       # sleep 2
	 # fi
  # done
  # sleep 1
  # clear   
# }

function create_db_users_ () {
  call_allert_title_
  logo_findme_
  tmpusr_tmppass_
  var="${num:1:1}"
  var2="${num:0:1}"
  TMP66="/tmp/mysql-tmp/srvlist/$mysqlserverhost "
  echo -e "\n\t\t\t${number}Step 3${menu}: ${menu}Enter MySQL new user for creating databases:${normal}"
  local C1="$(printf "\t\t\t        ${bggrey}${black}${blink}===>${normal}${menu}: ${normal}")"
  read -e -p "$C1" dbcreator
  clear && dbacreator="rhrzwgegfb" && clear && liip="192.168.260.200" && creatorapasswd="sdgagaasfhrtr" && clear
  call_allert_title_
  var3="$var$var2"
  logo_findme_
  rgb="lol"
  echo -e "\n\t\t\t${number}Step 3${menu}: ${menu}Enter MySQL creator password:${normal}"
  TMP61="/tmp/mysql-tmp/srvlist/tmp/listing/www/$liip/$rgb.log"
  local C2="$(printf "\t\t\t        ${bggrey}${black}${blink}===>${normal}${menu}: ${normal}")"
  read -s -p "$C2" creatorpasswd
  mkdir -p /tmp/mysql-tmp/srvlist/tmp/listing/www/$liip
# local C2="$(printf "\t\t\t${menu}Enter MySQL creator passwd: ${normal}\n")"
#  mysql -u"$usr" -p"$passwd" --host="$mysqlserverip" -P 3306
  echo $dbacreator >> $TMP66/$rgb.log
  echo $creatorapasswd >> $TMP66/$rgb.log
mysql -u$usr -p$passwd -N <<MYSQL_SCRIPT
CREATE USER '$dbcreator'@'localhost' IDENTIFIED BY '$creatorpasswd';
GRANT CREATE, UPDATE on *.* to '$dbcreator'@'localhost';
FLUSH PRIVILEGES;
MYSQL_SCRIPT
  TMP62="/tmp/mysql-tmp/srvlist/tmp/$rgba.log"
  clear && echo $dbcreator >> $TMP62$var3 && clear && echo $creatorpasswd >> $TMP62$var3 && clear
 }
 
function create_db_users_to_show_databases_ () {
# call_allert_title_
# logo_findme_
  # tmpusr_tmppass_
  # TMP66="/tmp/mysql-tmp/srvlist/$mysqlserverip"

# local C1="$(printf "${menu}Enter MySQL new user to show databases: ${normal}\n")"
# local C2="$(printf "${menu}Enter MySQL user to show databases password: ${normal}\n")"
               # read -e -p "$C1" dbshow
			   # read -s -p "$C2" showpasswd
# #  mysql -u"$usr" -p"$passwd" --host="$mysqlserverip" -P 3306
  # echo $dbshow >> $TMP66
  # echo $showpasswd >> $TMP66
call_allert_title_
logo_findme_
mysql -u$usr -p$passwd -N <<MYSQL_SCRIPT
CREATE USER 'dbshow'@'localhost' IDENTIFIED BY '@wsxcde3';
GRANT SHOW DATABASES on *.* to 'dbshow'@'localhost';
GRANT SELECT on *.* to 'dbshow'@'localhost';
FLUSH PRIVILEGES;
MYSQL_SCRIPT

clear && clear && clear
 }

function www_dir_ () {
 call_allert_title_
 logo_findme_
 find_site_dir_
 if [ -z "$path" ]; then
    echo -e "\n\t\t\tNo site directory exist"
 else
    echo -e "\n\t\t\t${bggrey}${black}${blink}${green}Found path here: $path${normal}"
 fi
 export PATHTO=$path
 TMP66="/tmp/mysql-tmp/srvlist/$mysqlserverhost "
   echo -e "\n\t\t\t${number}Step 4${menu}: ${menu}Enter directory for sites or choose existing${normal}"
   local C1="$(printf "\t\t\t        ${bggrey}${black}${blink}===>${normal}${menu}: ${normal}")"
 # local C1="$(printf "\t\t\t${menu}Enter directory for sites${normal}\n\t\t\t${menu1}===>:${normal} \n")"
 read -e -p "$C1" dir
 if [ -d "$dir" ]; then
    echo "Directory Exists"
 else 
    mkdir -p $dir
 fi 
 echo $dir > $TMP66
}

function logo_p_good_ () {
clear && clear && clear
# export trychk1=`cat $LOGO`
cat << "EOF"
















                                 Uno momento please...
                                 ----------------------------------------
                                 \
                                  \
                                        .--.
                                       |o_o |
                                       |:_/ |
                                      //   \ \
                                     (|     | )
                                    /'\_   _/`\
                                    \___)=(___/
EOF
sleep 3
clear && clear && clear
cat << "EOF"
















                                 Applying configuration...
                                 ----------------------------------------
                                 \
                                  \
                                        .--.
                                       |o_o |
                                       |:_/ |
                                      //   \ \
                                     (|     | )
                                    /'\_   _/`\
                                    \___)=(___/
EOF
sleep 3
clear && clear && clear
cat << "EOF"
















                                 Packed up and good to GO Boss!!!
                                 ----------------------------------------
                                 \
                                  \              
                                        .--.     
                                       |o_o |   ||__
                                       |:_/ |   / 
                                      //   \ \ /
                                     (|     | 
                                    /'\_   _/`\
                                    \___)=(___/
EOF
}

########### Start functions

function first_time_configuration_ () {
  while true;
  do
   clear && clear && clear
   call_allert_title_
   echo -e "\n\t\t\t\t ${menu}${menu1}New Server First time Configuration${normal}\n"
   logo_findme_
   system_status_start_
   echo -e "\t\t\t${number}   Step 1${menu}: ${menu}Enter mysql database IP address:${normal}"
   local C1="$(printf "\t\t\t   ${bggrey}${black}${blink}===>${normal}${menu}: ${normal}")"
   read -e -p "$C1" mysqlserverip
   clear && clear && clear
   call_allert_title_
   echo -e "\n\t\t\t\t ${menu}${menu1}New Server First time Configuration${normal}\n"
   logo_findme_
   system_status_start_
   echo -e "\t\t\t${number}   Step 1${menu}: ${menu}Enter mysql Hostname${normal}"
   local C2="$(printf "\t\t\t        ${bggrey}${black}${blink}===>${normal}${menu}: ${normal}")"
   read -e -p "$C2" mysqlserverhost
   if expr "$mysqlserverip" : '[1-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*\.[0-9][0-9]*$' >/dev/null; then 
    TMP66=/tmp/mysql-tmp/srvlist
    mkdir -p $TMP66	
    echo  $mysqlserverip >> $TMP66/$mysqlserverhost 
    sed -i.bak-$LD '/^$/d' $TMP66/$mysqlserverhost  
    sed -i 's/^[ \t]*//'  $TMP66/$mysqlserverhost  	   
    cat $TMP66/$mysqlserverhost 
	# pause_witout_exit_	
    clear && num="26" && clear	
    chk_root_exist_passwd_
    clear && clear && clear
    call_allert_title_
    logo_findme_
	call_allert_title_
	create_db_users_to_show_databases_
   	getdbusers_
    sleep 10
    clear && clear && clear
    call_allert_title_
    logo_findme_
	call_allert_title_
    create_db_users_
	clear && clear && clear
	call_allert_title_
    logo_findme_
	call_allert_title_
    www_dir_
    call_allert_title_
	rm -rf 
	logo_p_good_
	sleep 5
	return 0 && break  
   else 
     clear
     echo -e "${menu}You entered ${fgred}${blink}wrong ${normal}${menu}ip format${fgred}${blink}please enter again${normal}"
     sleep 5
   fi
  done

sleep 1
clear 


 }
  
function add_new_sql_srv_ () {
 lear && clear && clear
call_allert_title_
echo -e "\n\t\t\t\t    ${menu}${menu1}New Server First time Configuration${normal}\n"
logo_findme_

echo -e "\n\t\t\t${number}Step 1${menu}: ${menu}Enter mysql server IP or hostname${normal}"
local C1="$(printf "\t\t\t        ${bggrey}${black}${blink}===>${normal}${menu}: ${normal}")"
               read -e -p "$C1" mysqlserverip
TMP66=/tmp/mysql-tmp/srvlist
mkdir -p $TMP66	
echo  $mysqlserverip >> $TMP66/$mysqlserverhost 		   
cat	$TMP66/$mysqlserverhost 
pause_witout_exit_	   
 }
  
function start_ () {
system_status_start_
IFS=$'\n'
local chkip=`ls /tmp/mysql-tmp/srvlist | wc -l`
numero="0"
if [ "$chkip" == 0 ];
 then
 config_first_time_
 first_time_configuration_
 fi
clear && clear && clear
call_allert_title_
logo_findme_
# echo -e "\t${menu}Site Name synatax [${normal}subdomain.domain.com${menu}] ${normal} "
# local C2="$(printf "\t${menu}Enter site name you wish to create${normal} ")"
	      # read -e  -p 		  "$C2" TOADMINMAIL	

local P1OPT1=`echo -e "${number}1. ${menu}Add New WordPress Site ${normal}\n"`
local P1OPT2=`echo -e "${number}2. ${menu}Add New Database Host${normal}"` 
local P1OPT3=`echo -e "${number}3. ${menu}Exit${normal}"` 
 

declare -a menu0_main=($P1OPT1 $P1OPT2 $P1OPT3) 
 counter=0 
 function draw_menu0_ () { 
 for i in "${menu0_main[@]}"; 
 do if [[ ${menu0_main[$counter]} == $i ]]; 
 then tput setaf 2; 
 echo -e "                                 ===>${menu1}${green}$i${normal}"; tput setaf 4
        else
          echo -e "                                     $i";  
        fi
		
    done
	}

function clear_menu0_()  {
    for i in "${menu0_main[@]}"; do 
	tput cuu1 setaf 0;
	done
	tput ed setaf 0
}

# Draw initial Menu
function select_from_list_ () {
draw_menu0_

while read -sn 1 key; 

do # 1 char (not delimiter), silent

    # Check for enter/space
    if [[ "$key" == "" ]]; 
	then
	
#run comand on selected item
if [ "$counter" == 0 ]; 
then
create_new_site_
  
elif [ "$counter" == 1 ]; #Find pattern
then
step1_
elif [ "$counter" == 2 ]; 
then 
start_
clear

fi
pause_witout_exit_						 
clear && echo && clear
	custom_permission_
 start_
	fi
    # catch multi-char special key sequences 
	 
    read -sn2 -t 0.0005 k1; read -sN1 -t 0.0009 k2; read -sn2 -t 0.0005 k3
    key+=${k1}${k2}${k3}

    case "$key" in
	     1) create_new_site_ ;;
		 2) custom_permission_;;
		 3) start_ ;;
		 # 4) get_777_folder_ ;;
		 # 5) start_ ;;
		 # 6) ;;
		  $'\e') main_menu0_ ;;
		  #left
		$'\e[D'|$'\e0D')   start_ ;;
        # countersor up, left: previous item
        ""|i|j|$'\e[A'|$'\e0A') ((counter > 0)) && ((counter--))  ;;
		
        # countersor down, right: next item
        ""|k|l|$'\e[B'|$'\e0B'|$'\e[C'|$'\e0C') ((counter < ${#menu0_main[@]}-1)) && ((counter++)) ;;
		
        # home: first item
       ""|$'\e[1~'|$'\e0H'|$'\e[H')  counter=0;;
        # end: last item
        ""|$'\e[4~'|$'\e0F'|$'\e[F') ((counter=${#menu0_main[@]}-1));;
		
         # q, carriage return: quit
        #x|q|''|$'\e') color_ && exit_ ;;
		x|q) start_ ;;
    esac
    # Redraw menu
	
    clear_menu0_
    draw_menu0_
done

}
select_from_list_
}

variables_
start_

# Tasks
# Ask for mysql ip server                                       V
# Ask Mysql User Passwd                                         V
# Create user DB and User creator + insert to mysql file        V
# Ask www folder                                                V
# Add all to server file                                        V
# ask domain name of new www                                    V
# show users in db                                              V
# first config -> create user with show databases permission    V
# New wordpress site                                            V
# New database server                                           V
# show databases with regular user                              V
# hostlist + hostname                                           V
# insert subdomain.domain                                       V
# check where sites are situated                                V 
# Enter mysql Hostname
# status bar
# check if creator exist
# mysql db ssh connection on remote host
# Modify automation script     
# run tests on automation script
# function abort
# New db automation  
# Ubuntu or Centos 
# titles
# exit -> goodbye

# mkdir -p /usr/lib/cssam/mod/sshkeys
# SSHKEYX=`hostname -I | awk '{print $1,"\n"$2,"\n",$3  }' | sed  '/:/d' |  awk 'NF > 0' | sed 's/^[ \t]*//' | sed 's/[[:blank:]]*$//' | awk 'NR==1 {print; exit}'`
# SSHKEYL=`/usr/lib/cssam/mod/sshkeys/.ssh_key_$SSHKEYX`
# yes | ssh-keygen -b 2048 -t rsa -f /usr/lib/cssam/mod/.sshkeys/.ssh_key_$SSHKEYX -q -N ""  
# cat $SSHKEYL | ssh <user>@<hostname> 'cat >> $SSHKEYL && echo "Key copied"'

# ssh -tt -o "StrictHostKeyChecking no" hulk@192.168.99.221 

# echo -e "$SHOWSISMA\n$SHOWSISMA" 

# cat ~/.ssh/id_rsa.pub | ssh <user>@<hostname> 'cat >> .ssh/authorized_keys && echo "Key copied"'

# 138.201.116.161

# echo -e "$SHOWSISMA\n$SHOWSISMA" | passwd $GENERATENEWP

# for h in $SERVER_LIST; do
    # ip=$(dig +search +short $h)
    # ssh-keygen -R $h
    # ssh-keygen -R $ip
    # ssh-keyscan -H $ip >> ~/.ssh/known_hosts
    # ssh-keyscan -H $h >> ~/.ssh/known_hosts
# done
# }


# while read SERVER
# do
    # ssh-copy-id user@"${SERVER}"
# done <<\EOF
# server1
# server2
# server3
# EOF





