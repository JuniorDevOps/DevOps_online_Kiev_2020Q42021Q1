## PART 3. WORK WITH VAGRANT 

Download the required version of Vagrant according to the instructions [5] and according to the host operating system (OS) installed on the student's workplace.
Download and install Vagrant.

![47](https://github.com/JuniorDevOps/DevOps_online_Kiev_2020Q42021Q1/blob/main/m2/task2.1/part3/screenshots/47.png)
![48](https://github.com/JuniorDevOps/DevOps_online_Kiev_2020Q42021Q1/blob/main/m2/task2.1/part3/screenshots/48.png)
![49](https://github.com/JuniorDevOps/DevOps_online_Kiev_2020Q42021Q1/blob/main/m2/task2.1/part3/screenshots/49.png)

Run the powershell as administrator. Create a folder "Valerii".

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



## Create a test environment from a few servers.

First of all we initialized the environment with default Vagrant box and got Vagrant file for editing.

> vagrant init hashicorp-vagrant/ubuntu-16.04

![60](screenshots/60.png)

![61](screenshots/61.png)

Сhanged the Vagrantfile file for our purposes.

![Vagrantfile](screenshots/Vagrantfile)

Also I wrote a little html page and puted it in folder with Vagrant file.

```sh
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EPAM University Programs</title>
</head>
<body>
    <h1>EPAM University Programs</h1>
    <h2>DevOps Online Kiev 2020Q42021Q1</h2>
    <h2>Valerii Mankovskyi</h2>
</body>
</html>
```

Used command below to create/configure guest machines according to our Vagrantfile.

> vagrant up

![63](screenshots/63.png)

![66](screenshots/66.png)

![67](screenshots/67.png)

![68](screenshots/68.png)

![69](screenshots/69.png)

![70](screenshots/70.png)

Connect to running machine using SSH

>vagrant ssh test1

>vagrant ssh test2

Cheking for Apache Server

![73](screenshots/73.png)

![74](screenshots/74.png)

![76](screenshots/76.png)

After that cheking for my page in browser

![75](screenshots/75.png)

![77](screenshots/77.png)
