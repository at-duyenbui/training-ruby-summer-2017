### Daily report 
2017/07/03
## Introduce Ruby on Rails
Ruby on **Rails** is a web framework, be built base on Ruby language programming. Rails use for build and develop web application... Rails is an open source, support by many libraries called **gem**
**Web Model**
![Web model](https://image.ibb.co/gCoVsv/Web_Model_1.png)

**MVC on Rails**
![MVC on Rails](https://image.ibb.co/mh0UKa/MVC_on_Rails_1.png)
_____
#### Start with Rails
-	Create new project:
	>rails new [project_name]


-	To install gem, we need install **bundle**. When run statement create new project, it will run automatic statement

	>run bundle install

- Run server
	>rails s

-	Change port and Run server

	>rails s[erver] -p 1234 

-	Run and share server
	>rails s -b 0.0.0.0
-	Rails will create the entire directory structure for application
##### Directory Structure
![structure](https://image.ibb.co/cX2vQF/Screenshot_from_2017_07_03_15_17_40.png)

-	app: organized application component. It contains main code of project
	-	assets: contains file use for design font-end web such as css, js, images ...
	-	channels: listener event, save socket, support for process multiple threads
	-	helpers: contains common methods.
	-	jobs: create another process threads for task that need more time to run such as process to sent email.
	-	mailer: process task of mail
	-	controller: receive request from client, sent request to model. Receive result from model and render to view
	-	model: interact with database
	-	view: convert data receive from controller to view by html, xml or json.
-	bin: load gem for project
-	config: config project
	-	locales: config language for application
	-	initialized: all file in this will be run first when build web application
	-	database: config database used in project
-	lib: contains libraries
-	db
	-	seed.rb : create visual data, support for develop project
-	test: contains unit test and other file for testing
-	gemfile: contains gems. In this file, gems are grouped for specific environment. It may be develop environment, staging environment or production environment.
-	gemfile.lock: lock code default with specific version, avoid conflict version.

