
![logo](https://user-images.githubusercontent.com/61228111/178097170-8c7a5646-efb9-4836-8e4a-6a5bd7c4ca74.png)

## About autorecon
An automation tool to perform multiple reconnaisance attacks on a domain instantly   
I modified a little bit from [autorecon](https://github.com/Retr0-45809/autorecon.git)   
I think it's really good open source for finding out domain's information    

## Modified points
1) except traceout module(because it takes a long time)
2) modified output path(I want to change output path under /autorecon/output)
3) crawler.py - 'enter target' comment out(Even without it, the result is the same)
If you want to deploy the traceout module, you can use autorecon.py file
I didn't modify original autorecon.py, after copying that file modified 1,2 points renamed the file md_autorecon.py

## Installation(If you use docker)

```
git clone https://github.com/aboul3la/Sublist3r.git
```
If you use docker, it's the best way to deploy this tool
I uploaded docker image on my hub

## Features

- Web Crawler - A sort of bot known as a web crawler, often known as a spider, is frequently used by search popular search Engines. They provide the function of indexing website content so that such websites may be found in search results.
- Subdomain Enumeration - Sub-domain enumeration is the process of finding sub-domains for one or more domains. It helps to broader the attack surface, find hidden applications, and forgotten subdomains.
- DNS Enumeration - DNS enumeration is the process of locating all the DNS servers and their corresponding records for an organization. DNS enumeration will yield usernames, computer names, and IP addresses of potential target systems.
- Port Scanning - A port scan is a common technique hackers use to discover open doors or weak points in a network. It can reveal whether active security devices like firewalls are being used by an organization.
- WHOIS - WHOIS is a query and response protocol that is widely used for querying databases that store the registered users of an Internet resource, such as a domain name or an IP address block, but is also used for a wider range of other information.
- SSL Certificate - This opens an SSL connection to the specified hostname and port and prints the SSL certificate.
- Traceroute - Traceroute command in Linux prints the route that a packet takes to reach the host. This command is useful when you want to know about the route and about all the hops that a packet takes.
- Directory Search - It uses Wayback machine to search past archived directories and fuzzy urls.
- Export Result - Get txt, xml or csv file containing final results of each scan.
## Installation



```bash
  git clone https://github.com/Retr0-45809/autorecon.git
  cd autorecon
  pip3 install -r requirements.txt
  python3 autorecon.py --full -o <export file type> <url>
```
    


## Demo

https://drive.google.com/file/d/1iTs7MWxmzLllcm5uUfxal6SdrihOh_Hb/view?usp=sharing

