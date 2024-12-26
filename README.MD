# Project Title

![Project Logo](https://www.plesk.com/blog/business-industry/devops-cycle-2-automated-deployment-operations-monitoring/ "Auto deployment")

## Description

Simple bash auto deployment.
### Docker support in the future!

## Table of Contents
- [Installation](#installation--configuration)
- [Deployment scheduling](#deployment-scheduling-via-crontab)

## Installation && configuration

1. Clone the repo:
   2. SSH : ```git clone git@github.com:wiktorsk8/auto-deployment.git```
   3. HTTPS : ```git clone https://github.com/wiktorsk8/auto-deployment.git```
2. `` cd /auto-deployment``
3. ```cp .env.example .env```
4. ```PROJECT_PATH``` is an absolute path to the project you want to deploy automatically
5. Add permissions to the scripts by using - ```sudo chmod +x $(pwd)/*.sh ```
6. Now you can check permissions - ```ls -la```

## Deployment scheduling via crontab

### 1. Open the Crontab file
```crontab -e```
### 2. At the top of the file add this line:
```* * * * * /<auto-deployment-project-path>/run.sh >> <path-to-log-file>/cron_output.log 2>&1```
#### Eg. ```<auto-deployment-project-path>``` = /home/username/auto-deployment/
#### Eg. ```<auto-deployment-project-path>``` = /home/username/logs/auto-deployment/


