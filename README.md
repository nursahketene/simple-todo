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

1. Download & Install Robotframework from [here](http://code.google.com/p/robotframework/downloads/list) and run

		$sudo python setup.py install

1. Download & Install the latest robot selenium library from [here](http://code.google.com/p/robotframework-seleniumlibrary/downloads/list) and run

		$sudo python setup.py install

1. Init the Database

        $rake db:migrate

1. Run the tests

        $rake spec cucumber
		$pybot .

1. Run the application in [localhost](http://localhost:3000)

        $rails s

## Using the fixtures in your development environment

        $rake db:seed
