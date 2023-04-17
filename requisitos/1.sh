#!bin/bash

source installer.sh

Title
echo "[1] Estado Tarjeta de Red"
echo 
echo "=============================================================================="
echo "                              Tarjeta de Red"
echo "=============================================================================="
sudo airmon-ng
echo "------------------------------------------------------------------------------"
sudo iwconfig
echo "=============================================================================="
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
			2 )	bash requisitos/1.sh
				;;
			3 )	exit && clear
				;;
			* )	echo
				echo "$RRPLY No es una opcion valida"
	esac
