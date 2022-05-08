compile: 
	echo "Compiling... archivo"
	gcc -Os -S -o archivo.s archivo.c
	as -o archivo.o archivo.s
	gcc -o archivo archivo.o
comandos_git: 
	echo "Uploading..."
	git checkout -b main
	git add .
	git commit -m 'Commit'
	git push origin main
clean: 
	echo "Cleaning..."
	rm -rf archivo.o archivo archivo.s
