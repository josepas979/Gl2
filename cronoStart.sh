#! /bin/bash
# Transformacion de la hora actual a segundos

aux=$(date | awk '{print $4}')

auxH=$(echo $aux | awk -F: '{print $1}')
auxM=$(echo $aux | awk -F: '{print $2}')
auxS=$(echo $aux | awk -F: '{print $3}')

export prev=$(expr $auxH "*" 3600 + $auxM "*" 60 + $auxS)
