## PART 2. WORK WITH VIRTUALBOX

#### 1. First run VirtualBox and Virtual Machine (VM).

Create VM1 and install Ubuntu. Set machine name "Ubuntu_Mankovskyi" 
![1](https://github.com/JuniorDevOps/DevOps_online_Kiev_2020Q42021Q1/blob/main/m2/task2.1/part2/screenshots/1.png)
![2](https://github.com/JuniorDevOps/DevOps_online_Kiev_2020Q42021Q1/blob/main/m2/task2.1/part2/screenshots/2.png)
![3](https://github.com/JuniorDevOps/DevOps_online_Kiev_2020Q42021Q1/blob/main/m2/task2.1/part2/screenshots/3.png)
![4](https://github.com/JuniorDevOps/DevOps_online_Kiev_2020Q42021Q1/blob/main/m2/task2.1/part2/screenshots/4.png)
![5](https://github.com/JuniorDevOps/DevOps_online_Kiev_2020Q42021Q1/blob/main/m2/task2.1/part2/screenshots/5.png)
Get acquainted with the possibilities of VM1 control - start, stop, reboot, save state, use Host key and keyboard shortcuts, mouse capture, etc. 
![6](https://github.com/JuniorDevOps/DevOps_online_Kiev_2020Q42021Q1/blob/main/m2/task2.1/part2/screenshots/6.png)
Clone an existing VM1 by creating a VM2.
![7](https://github.com/JuniorDevOps/DevOps_online_Kiev_2020Q42021Q1/blob/main/m2/task2.1/part2/screenshots/7.png)
![8](https://github.com/JuniorDevOps/DevOps_online_Kiev_2020Q42021Q1/blob/main/m2/task2.1/part2/screenshots/8.png)
Create a group of two VM: VM1, VM2 and learn the functions related to groups.
![9](https://github.com/JuniorDevOps/DevOps_online_Kiev_2020Q42021Q1/blob/main/m2/task2.1/part2/screenshots/9.png)
For VM1, changing its state, take several different snapshots, forming a branched tree of snapshots. 
![10](https://github.com/JuniorDevOps/DevOps_online_Kiev_2020Q42021Q1/blob/main/m2/task2.1/part2/screenshots/10.png)
![11](https://github.com/JuniorDevOps/DevOps_online_Kiev_2020Q42021Q1/blob/main/m2/task2.1/part2/screenshots/11.png)
![12](https://github.com/JuniorDevOps/DevOps_online_Kiev_2020Q42021Q1/blob/main/m2/task2.1/part2/screenshots/12.png)
Export VM1. Save the *.ova file to disk. Import VM from *.ova file. 
![13](https://github.com/JuniorDevOps/DevOps_online_Kiev_2020Q42021Q1/blob/main/m2/task2.1/part2/screenshots/13.png)

#### 2. Configuration of virtual machines.

Explore VM configuration options (general settings, system settings, display, storage, audio, network, etc.). 
Configure the USB to connect the USB ports of the host machine to the VM.
![14](https://github.com/JuniorDevOps/DevOps_online_Kiev_2020Q42021Q1/blob/main/m2/task2.1/part2/screenshots/14.png)
![15](https://github.com/JuniorDevOps/DevOps_online_Kiev_2020Q42021Q1/blob/main/m2/task2.1/part2/screenshots/15.png)
![16](https://github.com/JuniorDevOps/DevOps_online_Kiev_2020Q42021Q1/blob/main/m2/task2.1/part2/screenshots/16.png)
![17](https://github.com/JuniorDevOps/DevOps_online_Kiev_2020Q42021Q1/blob/main/m2/task2.1/part2/screenshots/17.png)
![18](https://github.com/JuniorDevOps/DevOps_online_Kiev_2020Q42021Q1/blob/main/m2/task2.1/part2/screenshots/18.png)
Configure a shared folder to exchange data between the virtual machine and the host.

### I had some problems, but i solved them. ###
![19](https://github.com/JuniorDevOps/DevOps_online_Kiev_2020Q42021Q1/blob/main/m2/task2.1/part2/screenshots/19.png)
![20](https://github.com/JuniorDevOps/DevOps_online_Kiev_2020Q42021Q1/blob/main/m2/task2.1/part2/screenshots/20.png)

Folder shared

![21](https://github.com/JuniorDevOps/DevOps_online_Kiev_2020Q42021Q1/blob/main/m2/task2.1/part2/screenshots/21.png)
![22](https://github.com/JuniorDevOps/DevOps_online_Kiev_2020Q42021Q1/blob/main/m2/task2.1/part2/screenshots/22.png)

Configure different network modes for VM1, VM2. Check the connection between VM1, VM2, Host, Internet for different network modes.

**Main Networking Modes:**

* NAT (Network Address Translation)
* NAT Network
* Bridged networking
* Internal networking
* Host-only networking  

 **Review of Networking Modes:**
| Mode | VM-Host | Host-VM | VM1-VM2 | VM-Inet/Lan | Inet/Lan-VM |
| :-----: | :------:| :------: | :------: | :------: | :------: |
| Host-only | yes | yes | yes | no | no |
| Internal | no | no | yes | no | no |
| Briged | yes | yes | yes | yes | yes |
| NAT | yes | Port Forwarding | no | yes | Port Forwarding |
| NAT Network | yes | Port Forwarding | yes | yes | Port Forwarding |

#### I have choosed NAT (Network Address Translation)  Mode to make detail review.
 ![23](https://github.com/JuniorDevOps/DevOps_online_Kiev_2020Q42021Q1/blob/main/m2/task2.1/part2/screenshots/23.png)
 
VM1 IP 10.0.2.12

VM2 IP 10.0.2.11

Host IP 192.168.1.181

### `* From VM to Host.` We have ping only from VM to Host. 
![24](https://github.com/JuniorDevOps/DevOps_online_Kiev_2020Q42021Q1/blob/main/m2/task2.1/part2/screenshots/24.png)
![25](https://github.com/JuniorDevOps/DevOps_online_Kiev_2020Q42021Q1/blob/main/m2/task2.1/part2/screenshots/25.png)
![26](https://github.com/JuniorDevOps/DevOps_online_Kiev_2020Q42021Q1/blob/main/m2/task2.1/part2/screenshots/26.png)
### `* From Host to VM.` We have to use port forwarding.
![27](https://github.com/JuniorDevOps/DevOps_online_Kiev_2020Q42021Q1/blob/main/m2/task2.1/part2/screenshots/27.png)
![28](https://github.com/JuniorDevOps/DevOps_online_Kiev_2020Q42021Q1/blob/main/m2/task2.1/part2/screenshots/28.png)
![29](https://github.com/JuniorDevOps/DevOps_online_Kiev_2020Q42021Q1/blob/main/m2/task2.1/part2/screenshots/29.png)
### `* From VM1 to VM2.` We have no ping between.
![30](https://github.com/JuniorDevOps/DevOps_online_Kiev_2020Q42021Q1/blob/main/m2/task2.1/part2/screenshots/30.png)
### `* From VM to Inet/Lan.` We have a ping.
![31](https://github.com/JuniorDevOps/DevOps_online_Kiev_2020Q42021Q1/blob/main/m2/task2.1/part2/screenshots/31.png)
### `* From Inet/Lan to VM.` We should use port forwarding.

#### 3. Work with CLI through VBoxManage.


