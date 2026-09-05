# cloudshell-novnc-automation
Google Cloudshell Free VPS with Docker-novnc and Cloudflare Tunnel - AUTOMATION

#### Go To https://shell.cloud.google.com and use the below commands

## Before starting script give root permission
$ ``sudo su``

------
## 1.cloning git repository
$ ``git clone 'https://github.com/nkauj/cloudshell-novnc-automation'``

------
## 2.change dir

$ `cd cloudshell-novnc-automation`

------
## 3.executing vnc

$ `bash vnc.sh`

------
## 4.After a few seconds, you will see a link like this:

https://xxxxxxxx.trycloudflare.com

Open that link in your browser to use the desktop

------
## 5.Acessing VM through browser

After installing necessary pakages
The script ends by giving a tunnel url section for accessing Vritual Machine.
Access it by using your favourite browser

###### Tip1: In novnc settings change `remote scaling` to `local scaling` for correcting resolution
###### Tip2: For installing other packages, initially run `apt update` in terminal of docker machine

## Beta Script
First Run 
```
sudo su
```

To run the Beta Script, execute the following one-liner command:
```
mkdir ngrok; cd ngrok; curl 'https://raw.githubusercontent.com/developeranaz/cloudshell-novnc-automation/developeranaz-patch-1/vnc.sh' > vnc.sh; chmod +x vnc.sh; bash vnc.sh
```
