# vpt-demo1
Frist commit in this file

# IoT Hub Deployment

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [Overview](#overview)
- [Cloud deployment](#cloud-deployment)
- [Local dev deployment](#local-dev-deployment)
- [Archive](#archive)
- [Branching Strategy](#Branching-Strategy)
- [References](#References)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->


## Overview
This project contains two primary ways to run and deploy IoT Hub.

## Cloud deployment
- [Deploy to Azure using Terraform](terraform/04-application-services)

## Local dev deployment
- [Docker Compose](docker-compose)

## Archive
- A POC deployment with DC/OS was completed. It can be found under git tag `dcos-poc`.
- A POC deployment with Kubernetes / Minikube was completed.  It can be found under git tag `minikube-poc`. 


# Branching Strategy

## Branches

```
scratch/*
master
project/release/*
```

##  Scratch Branch (scratch/*)
- This branch contains pre-production code. When the features are finished then they are merged into master.

##  Master Branch (master)
- This branch which gets updated with new features and it will remain same as the master-nightly builds get generated
- All the features developed by developers in there scratch/* branches will get merged into this branch via PR (on Approval)

### Docker Tags
| Tags | Status | Usage |
| ------ | ------ | ----- |
| master-snapshot | gets created on every commit/merge into master branch | used for common-shared-cluster for nightly deployment |
| master-nightly  | scheduler based nightly builds | Can be used to create bridge for any kind of tetsing | 
| master-nightly-"date"  | scheduler based nightly builds | To Do | 
| master-nightly-"commit"  | scheduler based nightly builds | To Do |


##  Release Branch (project/release/x.x.x)
- This branch will be created for every release, Mostly one time creation of the branch appended with release version (project/release/x.x.x)
- We will create a release tag (release/x.x.x) from this branches, where the docker tags (x.x.x) wil gets created automatically.
- If any specific fix with respect to the release version will be made on the same release  version branch and create new release tag (it will be patch release)

### Release Docker Tags
| Tags | Status | Usage |
| ------ | ------ | ------ |
| project-release-x.x.x-snapshot-"commit" | gets created on every commit/merge into release branch |  Will be used for release environemnt deployment (in Future)|
| x.x.x  | whenever we create a tag --> release/x.x.x | used to release into Stage & Prod Environments|

#### Note:
- For every tag release, we have to update this [ KB](https://support.servicenow.com/kb?id=kb_article_view&sysparm_article=KB0952593) with respective release/patch version

## References

> Deployment Release PPT --> [ link](https://servicenow-my.sharepoint.com/:p:/r/personal/shivaprasad_salugu_servicenow_com/_layouts/15/Doc.aspx?sourcedoc=%7BC5BF3085-BECB-4F64-ABA7-04B10CF90E19%7D&file=Deployment%20Release%20-%20V1.pptx&action=edit&mobileredirect=true)
