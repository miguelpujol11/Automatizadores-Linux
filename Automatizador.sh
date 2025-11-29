#!/bin/bash
yellowColour='\e[1;33m'
purpleColour='\e[1;35m'
grayColour='\e[1;37m'
endColour='\e[0m'
redColour='\e[1;31m'
greenColour='\e[0;32m'

while true; do
   
echo -e "\n ${yellowColour}[*]${endColour}${grayColour} AUTOMATIZADOR${endColour}" 
echo -e " ${purpleColour}1)${endColour}${redColour} Apagar el sistema${endColour}"
echo -e " ${purpleColour}2)${endColour}${redColour} Reiniciar el sistema${endColour}"
echo -e " ${purpleColour}3)${endColour}${redColour} Actualizar el sistema${endColour}"
read -p "--> " comando
if [ "$comando" = "1" ]; then
shutdown now
elif [ "$comando" = "2" ]; then
reboot
elif [ "$comando" = "3" ]; then
apt update -y && apt upgrade -y && clear
echo -e "${greenColour}Tarea automatizada exitosamente${endColour}"
sleep 2    
clear
else   
clear
sleep 1
echo -e "${redColour}ERROR: Ops algo salio mal, comprueba cuantos numero hay y piensa si esta este nuemero.${endColour}"
sleep 5    
clear 
echo -e "\n ${yellowColour}[*]${endColour}${grayColour} AUTOMATIZADOR" 
echo -e "\n ${purpleColour}1)${endColour}${redColour} Apagar el sistema${endColour}"
echo -e "\n ${purpleColour}2)${endColour}${redColour} Reiniciar el sistema${endColour}"
echo -e "\n ${purpleColour}3)${endColour}${redColour} Actualizar el sistema${endColour}"
read -p "--> " comando
fi
done
