#! /bin/bash


<< task
Deploy django app. from start to end
using shell scripting and
Handle errors in deployment
task

code_clone (){
	echo "Cloning the Django app..."
	git clone https://github.com/LondheShubham153/django-notes-app.git


}

install_requirements (){
	echo "Installing Dependencies"
	sudo apt-get install docker.io nginx -y


}

restart_required (){
	echo "Restarting and enable servcies"
	sudo chown $USER /var/run/docker.sock
	sudo systemctl enable nginx
        sudo systemctl enable docker
		



}

deploy (){
	echo "********DEPLOYMENT STARTED*****"
	sudo docker build -t notes-app 
	sudo docker run -d -p 8000:8000 notes-app:latest


}


if ! code_clone; then 
	echo "Code Directory is already exist"
	cd django-notes-app
fi





if ! install_requirements; then
	echo "Installation failed"
	exit 1
fi


if ! restart_required; then
	echo "System Fault"
	exit 1
fi

deploy

echo "*****DEPLOYMNET DONE"
