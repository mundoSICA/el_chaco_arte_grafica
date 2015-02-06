#!/bin/bash
#
# Se encarga de generar los archivos SVG, requiere inkscape.
#

for svg_img in $(ls *\.svg) 
do
	echo "Generando imagenes resultantes de: ${svg_img}";
	img_result=$(echo ${svg_img} | sed  's/\.svg$//g');
	inkscape $svg_img -e png/${img_result}.png
	convert png/${img_result}.png png/${img_result}.jpg
	echo "===============================================\n";
done
