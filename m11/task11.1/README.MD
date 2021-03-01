# Task 11.1. Docker task.
## Using docker lection 2 create a docker image with Python Flask app that displays random cat pix.

The goal of this exercise is to create a Docker image which will run a Flask app.  

We'll do this by first pulling together the components for a random cat picture generator built with Python Flask, then dockerizing it by writing a Dockerfile. Finally, we'll build the image, and then run it.

Сreate a flask-app directory with the following files:  

-	app.py  

-	Dockerfile  

-	requirements.txt  

-	templates/index.html  

![1](screenshots/1.png)

Content of **app.py** file:  

![2](screenshots/2.png)

Content of **Dockerfile** file:  

![3](screenshots/3.png)

Content of **requirments.txt** file:  

![4](screenshots/4.png)

Content of **index.html** file:  

![5](screenshots/5.png)

Checking docker version and list of existing docker images and containers.

![6](screenshots/6.png)

Launch docker image building with tag jundevops/mycatapp.

![7](screenshots/7.png)
![8](screenshots/8.png)
![9](screenshots/9.png)

Check out what we have.

![10](screenshots/10.png)

Launch our container from the jundevops/mycatapp image with port forwarding from 5000 to port 8000.

![11](screenshots/11.png)  

Enter ```localhost:8000``` in web browser and check out our web application. Click the Refresh button a couple of times.

![12](screenshots/12.png)

![13](screenshots/13.png)

![14](screenshots/14.png)

![15](screenshots/15.png)  

List all the images and containers that we have by typing ```docker image ls``` and ```docker ps -a``` commands.

![16](screenshots/16.png)  

Login to Docker Hub with ```docker login```. After that you must enter your username and password for your account. I already have a Docker Hub account – **jundevops**.

And push our image to Docker Hub registry.

 ![17](screenshots/17.png)  
 
Check on Docker Hub site that our image has been downloaded.

![18](screenshots/18.png)  














