# DevOpsGL_BaseCampTest-40
![Screenshot_75](https://user-images.githubusercontent.com/106797604/200608933-ae7b685a-bff6-49bb-a635-6b174d488119.png)

## Introduction
![Screenshot_73](https://user-images.githubusercontent.com/106797604/200608853-4172aa6e-a72d-46b1-967f-3662bacbf15d.png)



### 1. 
- Create a script to install and run Apache web-server change index.html content to your name and surname, 


Creating the script
Use nano to create a bash script, we’ll name it webserverGL.sh

```
#!/bin/bash
# package updates
sudo yum update -y

# A script to install and run Apache web-server
sudo yum -y install httpd
sudo systemctl start httpd
sudo systemctl enable httpd
sudo systemctl status httpd | grep Active
```
Adding the needed permissions for creating and editing the index.html file
```
sudo chown -R $USER:$USER /var/www
```

Change index.html content to my name and surname Vlady Yerys:
```
# creating the html landing page
cd /var/www/html/
echo '<!DOCTYPE html>' > index.html
echo '<html>' >> index.html
echo '<head>' >> index.html
echo '<title>Vlady Yerys</title>' >> index.html
echo '<meta charset="UTF-8">' >> index.html
echo '</head>' >> index.html
echo '<body>' >> index.html
echo '<h1></h1>' >> index.html
echo '<h3></h3>' >> index.html
echo '</body>' >> index.html
echo '</html>' >> index.html
```
![Screenshot_76](https://user-images.githubusercontent.com/106797604/200611134-2dad917b-cc29-4507-b121-ab1f4cd073f1.png)

THEN
Make the script executable
```
chmod +x webserverGL.sh
```
![Screenshot_77](https://user-images.githubusercontent.com/106797604/200611660-a8de46ef-bd0e-4d7c-ace6-6beee649f1ba.png)


### 2. 
- a.Commit the script to your GitHub repository 
![Screenshot_78](https://user-images.githubusercontent.com/106797604/200613138-5e04a85f-52a4-4f52-b61f-3a6d325fc901.png)
![Screenshot_79](https://user-images.githubusercontent.com/106797604/200613156-e5784238-a766-4a2c-8cc4-1a62d2f3c12a.png)

- b.Commit the script together with README.md file to your GitHub repository
![Screenshot_80](https://user-images.githubusercontent.com/106797604/200613168-0727e64a-df79-46a5-b3e7-13a64f39d442.png)

### 3. 
- Answer with the repository link.
## Acceptance Criteria: 
after running the bash script, in the browser on address 127.0.0.1 must be your name and surname.


Here is complete script with descriptions for what the commands are doing:
```
#!/bin/bash
# package updates
sudo yum update  -y

# apache installation, enabling and status check
sudo yum -y install httpd
sudo systemctl start httpd
sudo systemctl enable httpd
sudo systemctl status httpd | grep Active

# adding the needed permissions for creating and editing the index.html file
sudo chown -R $USER:$USER /var/www

# creating the html landing page
cd /var/www/html/
echo '<!DOCTYPE html>' > index.html
echo '<html>' >> index.html
echo '<head>' >> index.html
echo '<title>Vlady Yerys</title>' >> index.html
echo '<meta charset="UTF-8">' >> index.html
echo '</head>' >> index.html
echo '<body>' >> index.html
echo '<h1></h1>' >> index.html
echo '<h3></h3>' >> index.html
echo '</body>' >> index.html
echo '</html>' >> index.html
```


