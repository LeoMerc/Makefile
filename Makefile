file = archivo
branch = main 
commit = mensaje

compile:
	echo "Compiling... $(file)"
	gcc -Os -S -o $(file).s $(file).c
	as -o $(file).o $(file).s
	gcc -o $(file) $(file).o
comandos_git: 
	echo "Uploading..."
	git add .
	git commit -m $(commit)
	git push origin $(branch)
clean: 
	echo "Cleaning..."
	rm -rf $(file).o $(file) $(file).s	

