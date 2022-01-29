nano Dockerfile

git clone https://github.com/CDPS-ETSIT/practica_creativa2.git

----------------------------------------------

sudo apt-get update

sudo apt-get install \
 apt-transport-https \
 ca-certificates \
 curl \
 gnupg-agent \
 software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
 "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
 $(lsb_release -cs) \
 stable"

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io

------------------------------------------------

sudo docker build -f Dockerfile -t 48/productpage .

	LISTAR IMG-> sudo docker images -a
	BORRAR IMG-> sudo docker rmi "IMAGEID"

sudo docker run -p 9080:9080 48/productpage