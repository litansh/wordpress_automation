#!/bin/bash
#!/bin/sh -
## --------------------------------------
# Step #1: Define variables
# --------------------------------------
#EDITOR=vim
#PASSWD=/etc/passwd
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
export under=`echo -e "\033[4m"`
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
export CENTOS0=`awk -F= '/^NAME/{print $2}' /etc/os-release | grep -o CentOS | wc -l `
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
                                      \    /  CallMe   //  /     
                                      \_/' \         |/  /         
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
	echo -e "${menu}${menu1}                                                                                                        ${normal}"
	echo -e "${menu}${menu1}                                          ${black}${blink}====>${normal}${menu}${menu1}AlertMe${menu1}${black}${blink}<====${normal}${menu1}                                             ${normal}"
	echo -e "${menu}${menu1}--------------------------------------------------------------------------------------------------------${normal}"
	echo -e "${menu}$BANNER${normal}${green}${normal}${green}$GREPBANN${normal}"
	unset TIMEMENUBANNER
} 


#_________Functions for all Start___________
function tmpusr_tmppass_ () {
TMPPASSWD="$(cat $TMP)"
TMPUSR="$(cat $TMP1)"
local CHKUSR="$(ls /tmp/mysql-tmp | grep  "mysql-tmp23455.log" | wc -l)"
local CHKPSSW="$(ls /tmp/mysql-tmp | grep  "mysql-tmp455.log" | wc -l)"
local CHKUSR1="$(cat  /tmp/mysql-tmp/mysql-tmp23455.log | wc -L)"
local CHKPSSW1="$(cat  /tmp/mysql-tmp/mysql-tmp23455.log | wc -L)"
if [ "$CHKUSR" == 0 ] || [ "$CHKPSSW" == 0 ] || [ "$CHKUSR1" -lt 4 ] || [ "$CHKPSSW1" -lt 4 ] ;
then
echo > $TMP
echo > $TMP1
chk_root_exist_passwd_ && return
fi
 
}

# Function used to validate name of database if not contain spesials lik ['!'@#\;:\ $%^\&*(.)+]* ]
function valid_dbname_ () {
local C1="$(printf "${menu}Enter Database name: ${normal}\n")"
while true;
 do 
    
	getdbbefore_
    echo -e "${menu}Enter valid Database name ${fgred}without ${normal}${menu}spesial characters ${normal}\n"
	echo -e "${menu}For example:${normal}"
    echo -e	"${green}       domain_com ${normal}${menu}=${green}:)" 
	echo -e "${fgred}       domain.com ${normal}${menu}= ${fgred}:( ${normal}\n"
    echo
    read -e -p "$C1" dbname
	back_
    echo
if [[ $dbname == *['!'@#\;:\ $%^\&*(.)+]* ]] ;
then
     echo
	 echo -e "${menu}Database ${blink}${fgred}$dbname ${normal}${menu}is invalid${normal}"
	 echo
	 sleep 4
	
  else   
 break
fi
done
#echo -e "Database name "$dbname" is valid"
clear
}

function getdbbefore_ () {
echo
echo "        Databases         "
mysql -u$TMPUSR -p$TMPPASSWD -N -e  'show databases;'

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

#3# OPTION-3. Create new Database
function create_new_db_title_ () {
clear
echo
    printf "\n${menu}      Create New Database without user         ${normal}\n"
	printf "\n${menu}******************************************${normal}\n"
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
echo -e "${menu}New Database ${green}$dbname ${menu}will be created.${normal} "
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
echo -e "${menu}New database ${green}$dbname ${menu}created${normal}"
echo
echo
pause       
fi
} 


function chk_root_exist_passwd_ () {
ctrl_
clear
call_allert_title_
logo_findme_
local C1="$(printf "${menu}Enter MySQL super user: ${normal}\n")"
local C2="$(printf "${menu}Enter MySQL passwd: ${normal}\n")"

while true;
 do 
 read -e -p "$C1" usr
 
 
     
     mysql -h $mysqlserverip -P 3306  -uwwwrobot -p
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

function first_time_configuration_ () {
 lear && clear && clear
call_allert_title_
echo -e "\n\t\t\t\t    ${menu}${menu1}New Server First time Configuration${normal}\n"
logo_findme_

echo -e "\n\t\t\t${number}Step 1${menu}: ${menu}Enter mysql server IP or hostname${normal}"
local C1="$(printf "\t\t\t        ${bggrey}${black}${blink}===>${normal}${menu}: ${normal}")"
               read -e -p "$C1" mysqlserverip
TMP66=/tmp/mysql-tmp/srvlist
mkdir -p $TMP66	
echo  $mysqlserverip >> $TMP66/$mysqlserverip 
sed -i sed '/^$/d' $TMP66/$mysqlserverip 
sed -i sed 's/^[ \t]*//'  $TMP66/$mysqlserverip 	   
cat	$TMP66/$mysqlserverip

pause_witout_exit_		   


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
echo  $mysqlserverip >> $TMP66/$mysqlserverip		   
cat	$TMP66/$mysqlserverip
pause_witout_exit_	   
 }
  
  
 

function start_ () {
IFS=$'\n'
local chkip=`ls /tmp/mysql-tmp/srvlist | wc -l`
if [ "$chkip" == 0 ];
 then
 first_time_configuration_

 fi
clear && clear && clear
call_allert_title_
logo_findme_


local P1OPT1=`echo -e "${number}1. ${menu}Add new WP site ${normal}\n"`
local P1OPT2=`echo -e "${number}2. ${menu}Add New SQL Server${normal}"` 
local P1OPT3=`echo -e "${number}3. ${menu}Exit{normal}"` 
 

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
apply_permissions_
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
	     1) apply_permissions_ ;;
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

first_time_configuration_

#start_



# First Time runing
# Step 1 Ask for mysql ip server
# Step 2 Ask Mysql User Passwd
# Step 3 Create user DB and User creator
# Step 4 Ask www folder 
# Step 5 ask domain name of new www

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



