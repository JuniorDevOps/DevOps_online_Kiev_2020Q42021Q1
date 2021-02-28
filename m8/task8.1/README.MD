# Task 8.1. Jenkins Task

## Create some templates using lection materials about Jenkins according your final task.

Create ec2-instance in my AWS account for Jenkins installation.  

  ![1](screenshots/1.png)
  
Connect to ec-2 instance via SSH with MobaXterm.  

![2](screenshots/2.png)  

Connection established. 

![3](screenshots/3.png)  

Visit site Jenkins.io and find out how to install Jenkins on Linux machine. Required commands below:  

 ![4](screenshots/4.png)  
 
Check the list of installed packages and Jenkins service status. 

![5](screenshots/5.png)

![6](screenshots/6.png)

![7](screenshots/7.png)

Copy initial Admin Password.

![8](screenshots/8.png)

And unlock Jenkins.

![9](screenshots/9.png)

Expand functionality of Jenkins with suggested plugins.

![10](screenshots/10.png)

Create user with admin privileges

![11](screenshots/11.png)

Create a repo in GitHub named Jenkins_Task. Connect to linux machine and create index.html and image directory. After that, set up Git (user name and email) and do your first commit. 

![12](screenshots/12.png)

![13](screenshots/13.png)

Copy the SSH key to Git account for Jenkins to visit.

![14](screenshots/14.png)

Configure webhook to allow Jenkins to be notified of any events happen in our repo.

![15](screenshots/15.png)

Create one more ec2-instance for our future deployment.

![16](screenshots/16.png)

> Important! I did this task in 2 days and disabled my instances, so in some screenshots I have different IPs. 

> Jenkins Server: Old ip 18.192.65.175 New ip 18.185.53.18

> Prod Server: Old ip 3.127.147.149 New ip 18.184.137.137

![35](screenshots/35.png)

Install Apache server on the second (Prod) server.

![17](screenshots/17.png)

Start our first Jenkins job (My Jenkins Task). Indicate which github project we will use.

![18](screenshots/18.png)

Type repository url and credential (Ssh key) for github account.

![19](screenshots/19.png)

Check checkbox with GitHub hook trigger.

![20](screenshots/20.png)

Enter the commands to be executed during the Build phase.

![21](screenshots/21.png)

Go to the "Manage Plugins" in Jenkins and set up credentials (ip, login, ssh key) and a remote directory for our Prod server.

![22](screenshots/22.png)

Create post-build action (copy our index.html and image directory to Prod Server).

![23](screenshots/23.png)	

Launch our Job and look at the Console Output.

![24](screenshots/24.png)	

![25](screenshots/25.png)

Check our Prod Server. It works!

![26](screenshots/26.png)	

After that, lets make some changes to our html file and test our CI/CD pipeline.

![27](screenshots/27.png)

Was:

![28](screenshots/28.png)

Now (type Spring instead of Winter):

![29](screenshots/29.png)

Commit our changes and check what happens.

![30](screenshots/30.png)

After committing our Job on Jenkins was launched via webhook.

![31](screenshots/31.png)

Job is completed.

![32](screenshots/32.png)

Our changes took effect.

![33](screenshots/33.png)

Check up our commit in GitHub.

![34](screenshots/34.png)

Our servers.

![35](screenshots/35.png)
