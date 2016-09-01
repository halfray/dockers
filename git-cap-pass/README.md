# Git(get source code) + Capcapistranorb(CI) + Passenger (rails server) 
## Do what
when the docker container is starting , to get source from git ,then use cap to deploy to passenger

## How to use
##### you can use env to pass parameters
* APP_GIT_URL - the source git url (use https must)
* APP_BRANCH - the branch which you want to publish(default is master)

Example:
`docker run -d --name  cap-pass -p 8081:80  -v /root/docker/gate_way.yml:/home/app/www/current/config/gate_way.yml --env APP_GIT_URL=https://github.com/halfray/wechat-gateway.git --env APP_BRANCH=master halfray/cap-pass`

##Other info:
* nginx post : 80
* config home: /home/src/app	
*you can use volume to over that file*
	> Gemfile
	> Capfile
	> config/deploy.rb
	> config/deploy/production.rb
* app home   : /home/app/www 
* log 	   : /var/log/ 

