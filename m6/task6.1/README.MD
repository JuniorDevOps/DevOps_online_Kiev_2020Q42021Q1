# Task 6.1. Networking with Linux
#### 1. Create virtual machines connection according to figure 1:

![1](screenshots/1.png)

#### 2. VM2 has one interface (internal), VM1 has 2 interfaces (NAT and internal). Configure all network interfaces in order to make VM2 has an access to the Internet (iptables, forward, masquerade).  

Lets enable the network adapter and set it in the above modes:  

VM1 has 2 interfaces (NAT and internal).

![2](screenshots/2.png)  

![3](screenshots/3.png)

VM2 has one interface (internal).  

![4](screenshots/4.png)

**VM2:** Check the name of the network interface and make some settings.  

![5](screenshots/5.png)  

![6](screenshots/6.png)  

Enable the interface with the command:  

```sudo ifup enp0s3```

![7](screenshots/7.png)  

And check our settings for the interface ```enp0s3```.  

![8](screenshots/8.png)  

**VM1:** Check the name of the network interface and make some settings.  

![9](screenshots/8.png)  

![9](screenshots/9(1).png)    

And check our settings for the interfaces ```enp0s3``` and ```enp0s8```.

![10](screenshots/10.png)  

Lets make port forwarding for connection to the host.  

![11](screenshots/11.png)  

Check the status of the port forwarding port on the host machine.

![12](screenshots/12.png)  

Connecting to VM1 from the host machine via MobaXterm.

![13](screenshots/13.png)  

![14](screenshots/14.png)  

![15](screenshots/15.png)  

We need to make some changes to ```sysctl.conf``` file and add some entries (rules) to the VM1 iptables to enable VM2 to connect to the internet.

![16](screenshots/16.png)

```sudo iptables –S``` 

**Before:**

-P INPUT ACCEPT  

-P FORWARD ACCEPT  

-P OUTPUT ACCEPT  

The meaning of some keys:  

**-A** chain		 (append to chain)

**-j** target		 (target for rule)  

**-m** match		 (extended match)  

**-t** [table name]	 (table to manipulate)  

**-o** [output name]	  (network interface name)  

**-i** [input name]	 (network interface name)  

**-P** chain target	 (change policy on chain to target)

List of the commands:

```sudo iptables -t nat -A POSTROUTING -o enp0s3 -j MASQUERADE```  

```sudo iptables -A FORWARD -i enp0s8 -o enp0s3 -m state --state RELATED,ESTABLISHED -j ACCEPT```  

```sudo iptables -A FORWARD -i enp0s8 -o enp0s3 -j ACCEPT```

**After:**

![17](screenshots/17.png)

Routing tables of VM1 and VM2.

![18](screenshots/18.png)  

![19](screenshots/19.png)

#### 3. Check the route from VM2 to Host.

Pinging host machine (1921.168.1.181).

![20](screenshots/20.png)

Checking the route fron VM2 to host machine.

![21](screenshots/21.png)

#### 4. Check the access to the Internet, (just ping, for example, 8.8.8.8).

Pinging 8.8.8.8 IP address. 

![22](screenshots/22.png)

Checking the route fron VM2 to 8.8.8.8 ip address.

![23](screenshots/23.png)

#### 5. Determine, which resource has an IP address 8.8.8.8.  

For this purpose we use the command:  

```nslookup [ip address]```

![24](screenshots/24.png)

If we want to know more not only about ip addresses but also the hostname, we need to add a DNS server to our config.  

![25](screenshots/25.png)

#### 6. Determine, which IP address belongs to resource epam.com.  

For do that we may use some commands:

```dig [hostname]```  

![26](screenshots/26.png)

```host [hostname]```

![27](screenshots/27.png)

```ping [hostname]```

![28](screenshots/28.png)

#### 7. Determine the default gateway for your HOST and display routing table.  

Firstly, we check the entire network configuration we the command:

```ipconfig```

![29](screenshots/29.png)

Open the –help for the route command and select the required key:

```route PRINT```

![30](screenshots/30.png)  

![31](screenshots/31.png)

#### 8. Trace the route to google.com.  

We can do this with the command:  

```mtr [hostname]```  

![32](screenshots/32.png)  

![33](screenshots/33.png)

