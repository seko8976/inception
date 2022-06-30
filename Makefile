
all :

			sudo mkdir -p  /home/seoko/data/wordpres
			sudo mkdir -p  /home/seoko/data/database
			sudo echo "127.0.0.1 seoko.42.fr" >> etc/hosts
			sudo docker-compose -f srcs/docker-compose.yml up --build -data -d 

up :

			sudo docker-compose -f srcs/docker-compose.yml up --build -data -d

fclean :

			sudo docker-compose -f srcs/docker-compose.yml down --rmi all --volumes
			sudo docker-compose rmi debian:buster
			sudo rm -rf /home/seoko/

.PHONY : all up clean

