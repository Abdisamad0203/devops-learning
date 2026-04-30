## Networking Project

1. What I built  
I launched an EC2 server on AWS, installed NGINX, and connected it to a DuckDNS domain so it can be accessed in a browser.

2. What I did  
- Created an EC2 instance (Amazon Linux)  
- Opened ports for SSH (22), HTTP (80), HTTPS (443)  
- Installed and started NGINX  
- Pointed my DuckDNS domain to the EC2 public IP  

3. What I learned  
- How a domain links to an IP using DNS  
- Why ports matter for allowing traffic  
- How to host a basic web server on AWS  
- How to troubleshoot connection issues  

4. Issues I ran into  
- Couldn’t access the page at first (NGINX wasn’t running)  
- Domain didn’t work until I updated the correct IP  

5. Result  
I can now access the NGINX page using:  
- The EC2 public IP  
- My DuckDNS domain  
