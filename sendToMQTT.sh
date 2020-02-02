#!/bin/bash

#This script is provided by Chiunownow https://github.com/Chiunownow
#Thank you very much for providing this script
#This script is 

#use e.g with that script: MySensor.sh 
#!/bin/bash
#DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
#$DIR/LYWSD03MMC.py -d <device> -b 1000 -r --debounce --skipidentical 50 --name MySensor --callback sendToMQTT
#Change <mqtt.hostname> <mqtt.user> <mqtt.passwd>. Just like "mosquitto_pub -h 192.168.1.2 -t "MiTemperature2/$2/temp" -u mqttuser -P mqttpasswd -i "MiTemperature2" -m "$3""

mosquitto_pub -h <mqtt.hostname> -t "MiTemperature2/$2/temp" -u <mqtt.user> -P <mqtt.passwd> -i "MiTemperature2
" -m "$3"
mosquitto_pub -h <mqtt.hostname> -t "MiTemperature2/$2/humidity" -u <mqtt.user> -P <mqtt.passwd> -i "MiTemperature2
" -m "$4"
mosquitto_pub -h <mqtt.hostname> -t "MiTemperature2/$2/batterylevel" -u <mqtt.user> -P <mqtt.passwd> -i "MiTemperature2
" -m "$5"
