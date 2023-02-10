## About autorecon
An automation tool to perform multiple reconnaisance attacks on a domain instantly   
I modified a little bit from [autorecon](https://github.com/Retr0-45809/autorecon.git)   
I think it's really good open source for finding out domain's information

## About xml2json
Python script converts XML to JSON or the other way around   
I used [xml2json](https://github.com/hay/xml2json) to convernt xml to JSON

## Challenge Purpose
Create an intelligence report when provided with a domain name   
For gathering domain's information, used autorecon       
For creating an intelligence report in a json format, used xml2json

## Modified points from autorecon
1) except traceout module(because it takes a long time)
2) modified output path(I want to change output path under /autorecon/output)
3) crawler.py - 'enter target' comment out(Even without it, the result is the same)   
If you want to deploy the traceout module, you can use autorecon.py file   
I didn't modify original autorecon.py, after copying that file modified 1,2 points renamed the file md_autorecon.py   

## Demo

[https://drive.google.com/file/d/1iTs7MWxmzLllcm5uUfxal6SdrihOh_Hb/view?usp=sharing](https://drive.google.com/file/d/1EGNqZ7BiakzEdNv2sU4hZYvqp90fnUMM/view?usp=share_link)

## With Docker
It's the best way to implement this tool      
Build docker container with docker image that I uploaded docker image on hub or You can build docker container with Dockerfile   

### 1) Docker image
*[] this flag means user input data(So it depends on you)
```sh
docker pull pse27/autorecon:1.0
docker container run -itd --name [container name] pse27/autorecon:1.0
docker container exec -it [container name] /bin/bash
```
connect docker bash shell
```
cd ./autorecon
python3 md_autorecon.py --full -o xml [http://url or https://url]
```
![image](https://user-images.githubusercontent.com/44766776/217990158-5f82c812-8df2-4da2-86ff-3365b6255d45.png)
      
after extracting output, converting xml to json
```
cd ./output
xml2json -t xml2json -o [filename.json] [url.xml] --pretty
```
![image](https://user-images.githubusercontent.com/44766776/217990498-be3b508b-d695-4905-9a94-fea5a5f7d285.png)
     
### 2) Dockerfile
```
docker image build -t [image_name] .
docker container run -itd --name [container name] [image_name]
docker container exec -it [container name] /bin/bash
```
after connecting docker bash shell, it's the same process of above(1-Docker image)
```
cd ./autorecon
python3 md_autorecon.py --full -o xml [http://url or https://url]
```
![image](https://user-images.githubusercontent.com/44766776/217990172-60f8e8dc-8504-4f0e-9778-3cd249c110ca.png)
      
after extracting output, converting xml to json
```
cd ./output
xml2json -t xml2json -o [filename.json] [url.xml] --pretty
```
![image](https://user-images.githubusercontent.com/44766776/217990531-698c73d5-a111-46e5-b89e-41710987bbbe.png)

## Ubuntu
install packages and git clone
```
apt-get update -y 
apt-get install git -y 
apt-get install python3 -y 
apt install python3-pip -y 
pip install https://github.com/hay/xml2json/zipball/master
git clone https://github.com/n0wn3ss/autorecon.git
cd autorecon
pip3 install -r requirements.txt
```
after installing all packages, you should follow up below process
```
python3 md_autorecon.py --full -o xml [http://url or https://url]
```
![image](https://user-images.githubusercontent.com/44766776/217990172-60f8e8dc-8504-4f0e-9778-3cd249c110ca.png)
      
after extracting output, converting xml to json
```
cd ./output
xml2json -t xml2json -o [filename.json] [url.xml] --pretty
```
![image](https://user-images.githubusercontent.com/44766776/217990531-698c73d5-a111-46e5-b89e-41710987bbbe.png)


## Choices I've made
### 1) autorecon   
After searching information from Censys, I thought Why they didn't provide domain's external links and site maps.
So I was looking for the tools provide other information of domain(ex: links inside site, external links, etc)
At that time I found autorecon, it provide what I looked for.
Security incidents often occur when users connect to external links as well as the main page URL.
Sometimes it is also important to know what external links are.   

### 2) Ubuntu Docker
It's because I thought that ubuntu os which can use other security tools would be good if docker is used continuously, not one-time.

## Trade-offs
### Good
1) Gathering much information of domain
2) If using docker image, it's easy to use

### Not Good
1) Big volume of docker image
2) Absence of reputation of domain
It doesn't have reputation of domain like Virustotal provided

## Future improvements
### 1) Lightweighting of docker image
### 2) Cumtomizing of autorecon module
If some users want to add more data like reputation/history of domain, it can be customized the autorecon module. 
### 3) Output of Html format   
Report in html format is easy to read, so it is convenient for users.
The final goal is to provide a report in html format with the extracted json data.   

## How to Censys API provided the script
The data is obtained by continuously scanning the Internet and collecting information from various sources, including network traffic, public data sources, and other data feeds.
Overall, Censys provides a comprehensive view of the information about devices and services, their configurations.

## autorecon module Features

- Web Crawler - A sort of bot known as a web crawler, often known as a spider, is frequently used by search popular search Engines. They provide the function of indexing website content so that such websites may be found in search results.
- Subdomain Enumeration - Sub-domain enumeration is the process of finding sub-domains for one or more domains. It helps to broader the attack surface, find hidden applications, and forgotten subdomains.
- DNS Enumeration - DNS enumeration is the process of locating all the DNS servers and their corresponding records for an organization. DNS enumeration will yield usernames, computer names, and IP addresses of potential target systems.
- Port Scanning - A port scan is a common technique hackers use to discover open doors or weak points in a network. It can reveal whether active security devices like firewalls are being used by an organization.
- WHOIS - WHOIS is a query and response protocol that is widely used for querying databases that store the registered users of an Internet resource, such as a domain name or an IP address block, but is also used for a wider range of other information.
- SSL Certificate - This opens an SSL connection to the specified hostname and port and prints the SSL certificate.
- Traceroute - Traceroute command in Linux prints the route that a packet takes to reach the host. This command is useful when you want to know about the route and about all the hops that a packet takes.
- Directory Search - It uses Wayback machine to search past archived directories and fuzzy urls.
- Export Result - Get txt, xml or csv file containing final results of each scan.
