
<<<<<<< HEAD
for f in {1..27}
=======
for f in {1..126}
>>>>>>> 77ab2631b13be6e6cacc918b8344c6856e473321
do	
	cd ${f}
	num=${f}
	for x in {0..9}
	do
	   echo "${x}"
	   convert -size 60x60 xc:white -font font.ttf -pointsize 46 -gravity center -fill black -undercolor white  -annotate +0+0 "${x}" ${x}${num}.jpg
	done

	for x in {A..Z}
	do
	   echo "${x}"
	   convert -size 60x60 xc:white -font font.ttf -pointsize 46 -gravity center -fill black -undercolor white  -annotate +0+0 "${x}" ${x}-lg${num}.jpg
	done

	for x in {a..z}
	do
	   echo "${x}"
	   convert -size 60x60 xc:white -font font.ttf -pointsize 46 -gravity center -fill black -undercolor white  -annotate +0+0 "${x}" ${x}-sm${num}.jpg
	done
	convert -size 60x60 xc:white -font font.ttf -pointsize 46 -gravity center -fill black -undercolor white  -annotate +0+0 "." .-sm${num}.jpg
	
	cd ..
done
