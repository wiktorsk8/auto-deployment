# Bash auto deployment

![Project Logo](https://cdn1.plesk.com/wp-content/uploads/2018/12/27022732/automated-deployment.png "Auto deployment")

## Description

Simple bash auto deployment.
### Docker support in the future!

## Table of Contents
- [Installation](#installation--configuration)
- [Deployment scheduling](#deployment-scheduling-via-crontab)

## Installation && configuration

1. Clone the repo:
   <br>a. SSH : ```git clone git@github.com:wiktorsk8/auto-deployment.git```
   <br>b. HTTPS : ```git clone https://github.com/wiktorsk8/auto-deployment.git```
2. `` cd /auto-deployment``
3. ```cp .env.example .env```
4. ```PROJECT_PATH``` is an absolute path to the project you want to deploy automatically
5. Add permissions to the scripts by using - ```sudo chmod +x $(pwd)/*.sh ```
6. Now you can check permissions - ```ls -la```

## Deployment scheduling via crontab
The following configuration pulls new changes every minute.
### 1. Open the Crontab file
```crontab -e```
### 2. At the top of the file add this line:
```* * * * * /<auto-deployment-project-path>/run.sh >> <path-to-log-file>/cron_output.log 2>&1```
#### Eg. ```<auto-deployment-project-path>``` = /home/username/auto-deployment/
#### Eg. ```<auto-deployment-project-path>``` = /home/username/logs/auto-deployment/


