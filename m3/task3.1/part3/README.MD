# PART 3. Create an Amazon DynamoDB table  

#### Create an Amazon DynamoDB table in AWS.  
In the AWS Managment Console, click **Services**, then click **DynamoDB**.  

![1](screenshots/1.png)   

Click **Create table**. Enter **Table name**, **Primary** and some **Sort key**. 

![2](screenshots/2.png)    

#### Enter data into an Amazon DynamoDB table.

Add some data. Click the **Items** tab, then click **Create item**.
Type "Pulp Fiction" for "Movies" and "Quentin Tarantino" for "Director".

![3](screenshots/3.png)    

![4](screenshots/4.png)  

#### Query an Amazon DynamoDB table using Query and Scan.

There are two ways to query a DynamoDB: Query and Scan.

Change the drop-down list to Query and enter some details:

**Partition key:** Meet joe Black
**Sort key:** Martin Brest 

![5](screenshots/6.png)    

Change the drop-down list to Scan and enter some details:

**Filter:** Year 
**Value:** 1998

![6](screenshots/6.png)  
