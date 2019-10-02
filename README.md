# DevOps Interview

Welcome to the devops Interview Process Here are a few questions to help you along. 


1. Name a few application deployment strategies and their pros and cons.

- Recreate:
    * good: 1. simplest 2. created fresh infra environment
	* bad: need to plan downtime
- Rolling-update: 
	* good: 1. simple 0-downtime setup 2. play well with stateful apps
	* bad: 1. not good for very large scale app, the rolling/release time will be very long 2. inconsistent user experiences
- Blue/Green: 
	* good: 1. no downtime 2. easy to rollback 3. created fresh infra environment 4. instant release switch
	* bad: 1. double the infra cost 2. need to fully test before flip color
- A/B testing: 
	* good: 1. controlable traffic based on the metric chosen 2. testing with real traffic 3. no downtime
	* bad: 1. complex on traffic routing implementation 2. infra cost 3. slow release
- Canary:
	* good: 1. testing with real traffic 2. no downtime 3. simpler than A/B testing to implement
	* bad: 1. slow release 2. less traffic control 3. infra cost

# Docker-Portion Commands

$ docker build -t simple-flask-app:latest .

$ docker run -d -p 5000:5000 simple-flask-app

# AWS Design Questions

Now that you have your docker container running, we need to show off your fine work to the world. We have a few things we are going to need you to do to get this up and running. We would like to have you take the dockerfile that you have created locally, and deploy it into AWS infrastructure so users from the outside world can see your fine work. The task requires you to deploy the container to a single aws instance behind a load balancer, and deploy it behind SSL. We have already created a DNS zone file for you as well as a certificate. Your user has the ablitly to create all of these resources in the account default VPC.

Required Components:

 - Docker Repository
 - Running EC2 instance with the right continer
 - Correct security groups
 - SSL Connectivity to the application
 - Redirection from http to https
 - DNS entry
 - Please tag everything with the following tagging structure:
   * Name:Candidate
   * Date:YYYYMMDD

Please whiteboard this before executing the challenge, you may do this with any tools that you have, including manual use of the console.

Good Luck!
