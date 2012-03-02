# Simple Todo

## Description

This project is a sample project for:

* Authenticating users using **authlogic**
* Unit testing with **rspec + factory-girl**
* Acceptance testing with **cucumber**
  * Using AJAX in Acceptance tests

## Installation

1. Install RVM from [here](http://rvm.beginrescueend.com/)

1. Install Ruby with the RVM

        $rvm install 1.8.7
        $rvm use 1.8.7 --default

1. Clone the **simple-todo** repository

        $git clone git@github.com:mrako/simple-todo.git
    
1. Install Gems

        $gem install bundler --no-ri --no-rdoc
        $cd simple-todo
        $bundle install

1. Init the Database

        $rake db:migrate

1. Run the application in [localhost](http://localhost:3000)

        $rails s
 

## Tests

### Robotframework & Selenium

1. Download & Install Robotframework from [here](http://code.google.com/p/robotframework/downloads/list) and run

		$sudo python setup.py install

1. Download & Install the latest robot selenium library from [here](http://code.google.com/p/robotframework-seleniumlibrary/downloads/list) and run

		$sudo python setup.py install
 
1. To run your robot tests

		$pybot .

### Cucumber

1. The latest version of cucumber-rails is 1.3.0 however this application is using version 1.2.1. After running bundle install you can check your version running
		
		$bundle show cucumber-rails

1. If you wish to have more information about cucumber-rails, you can find it from [here](http://cukes.info/)
	
1. To run your cucumber tests 

		$rake cucumber

### Rspec

1. The latest version of rspec-rails is 2.8.1 and this application is using rspec-rails version 2.8.1 aswell. To see which version you have installed 

		$bundle show rspec-rails

1. To find more information about rspec-rails visit [here](https://github.com/rspec/rspec-rails)

1. To run your rspec tests

		$rake spec

## Using the fixtures in your development environment

        $rake db:seed
