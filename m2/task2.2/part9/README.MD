# PART 9. My static website using Amazon S3 and Route 53
### I will configure an Amazon S3 bucket to function like a website.

#### Step 1: Register a custom domain with Route 53. A have already registered domain jundevops.com

#### Step 2: Create two buckets.

Domain bucket – jundevops.com  
Subdomain bucket – www.jundevops.com

![1](part9/1.png)  

#### Step 3: Configure your root domain and subdomain buckets for website hosting

![2](part9/2.png)

![3](part9/3.png)

#### Step 4: Edit S3 Block Public Access settings and attach a bucket policy

![8](part9/8.png)

![9](part9/9.png)

![10](part9/10.png)

#### Step 5: Upload index and website content

![11](part9/11.png)

#### Step 6: Test your domain endpoint: 

jundevops.com.s3-website.eu-central-1.amazonaws.com   
www.jundevops.com.s3-website.eu-central-1.amazonaws.com

![4](part9/4.png)

![6](part9/6.png)

![21](part9/21.png)

![22](part9/22.png)

#### Step 7: Create Hosted Zone and add alias records for your domain and subdomain

![13](part9/13.png)

![15](part9/15.png)

![14](part9/14.png)

![18](part9/18.png)

![19](part9/19.png)

![20](part9/20.png)

#### Step 8: Test the websites www.jundevops.com and jundevops.com 

![23](part9/23.png)

![24](part9/24.png)

#### What happens if we enter the website address with a typo, you can see below

![25](part9/25.png)


## The list with links of completed labs is based on tutorials.

-	Launch a Linux Virtual Machine with Amazon Lightsail  
https://aws.amazon.com/getting-started/hands-on/launch-a-virtual-machine/

-	Launch and configure a WordPress instance with Amazon Lightsail  
https://aws.amazon.com/getting-started/hands-on/launch-a-wordpress-website/?trk=gs_card

-	Store and Retrieve a File with Amazon S3  
https://aws.amazon.com/getting-started/hands-on/backup-files-to-amazon-s3/

-	Batch upload files to the cloud to Amazon S3 using the AWS CLI  
https://aws.amazon.com/getting-started/hands-on/backup-to-s3-cli/?nc1=h_ls

-	Register a Domain Name with Amazon Route 53  
https://aws.amazon.com/getting-started/hands-on/get-a-domain/?nc1=h_ls

-	Deploy Docker Containers on Amazon Elastic Container Service (Amazon ECS)  
https://aws.amazon.com/getting-started/hands-on/deploy-docker-containers/?nc1=h_ls

-	Configuring a static website using a custom domain registered with Route 53  
https://docs.aws.amazon.com/AmazonS3/latest/dev/website-hosting-custom-domain-walkthrough.html

## The screenshot from amazon.qwiklabs.com with list of completed labs.

![26](part9/26.png)

