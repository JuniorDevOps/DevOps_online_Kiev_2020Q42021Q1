## PART 3. WORK WITH VAGRANT 

Download the required version of Vagrant according to the instructions [5] and according to the host operating system (OS) installed on the student's workplace.
Download and install Vagrant.

![47](https://github.com/JuniorDevOps/DevOps_online_Kiev_2020Q42021Q1/blob/main/m2/task2.1/part3/screenshots/47.png)
![48](https://github.com/JuniorDevOps/DevOps_online_Kiev_2020Q42021Q1/blob/main/m2/task2.1/part3/screenshots/48.png)
![49](https://github.com/JuniorDevOps/DevOps_online_Kiev_2020Q42021Q1/blob/main/m2/task2.1/part3/screenshots/49.png)

Run the powershell as administrator. Create a folder "valerii".

![50](https://github.com/JuniorDevOps/DevOps_online_Kiev_2020Q42021Q1/blob/main/m2/task2.1/part3/screenshots/50.png)

Move to Valerii folder and initialize the environment with the degault Vagrant box:

> vagrant init hashicorp/precise64

![51](https://github.com/JuniorDevOps/DevOps_online_Kiev_2020Q42021Q1/blob/main/m2/task2.1/part3/screenshots/51.png)

Create and configure guest machines according to Vagrantfile:

> vagrant up

![52](https://github.com/JuniorDevOps/DevOps_online_Kiev_2020Q42021Q1/blob/main/m2/task2.1/part3/screenshots/52.png)

![53](https://github.com/JuniorDevOps/DevOps_online_Kiev_2020Q42021Q1/blob/main/m2/task2.1/part3/screenshots/53.png)

Connect to running machine using SSH via MobaXterm.

IP address: 127.0.0.1

Port: 2222

Login: vagrant

Password: vagrant

And running date command on guest machine:
> date

![56](https://github.com/JuniorDevOps/DevOps_online_Kiev_2020Q42021Q1/blob/main/m2/task2.1/part3/screenshots/56.png)

![57](https://github.com/JuniorDevOps/DevOps_online_Kiev_2020Q42021Q1/blob/main/m2/task2.1/part3/screenshots/57.png)

Shutting and Deleting machine:

> vagrant halt

> vagrant destroy

![58](https://github.com/JuniorDevOps/DevOps_online_Kiev_2020Q42021Q1/blob/main/m2/task2.1/part3/screenshots/58.png)
