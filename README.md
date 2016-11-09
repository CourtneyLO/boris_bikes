<<<<<<< HEAD
#Boris Bikes

We are going to create a new Boris bike program which will be a network of docking stations and bikes that anyone can use.

The program will emulate docking stations, bikes and infrastructure.
## Exercise 1

Set up git/github and README

## Exercise 2

### User Story

As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

As a person,
So that I can use a good bike,
I'd like to see if a bike is working

####Nouns
- Person
- Bike
- Docking Station

###Verbs

- Release
- Working

###Table

| Objects         | Messages      |    
| -------------   |:-------------:|
| Person          |               |
| Bike            | is_working    |   
| Docking Station | releases bike |    

Person

  | see_if_working (true/false)

Bike

  | release_bike (if true)

Docking Station


## Exercise 3

We opened IRB and added the following code:

docking_station = DockingStation.new

We got an error.


## Exercise 4

Here are details of the error we got from the IRB stack trace:

Error type: NameError: uninitialized constant
Path: /usr/local/bin/irb
Line number: 11

The error means that there is no class with a method that has been defined or required.
Therefore the class cannot be found.

Create a file with the class and method to make a DockingStation object. And require this from IRB.

## Exercise 5

Created boris_bike_spec folder and added describe DockingStation do end

## Exercise 6  

Run test and it passed.

## Exercise 7

We opened pry and required the docking_station.rb file.
We created a docking_station variable.
We called a method release_bike on the docking_station variable.
This caused an error: NoMethodError: Undefined method release_bike

## Exercise 8

We added a test to the boris_bikes_spec file. This test says the class DockingStation should respond to the method release bike

Rerunning rspec caused an error

We added a method to docking_station.rb to release the bike
The test passed.

## Exercise 9

- We added a bike.rb and bike_spec.rb file.
- We added an empty test to bike_spec.rb file
- Required bike.rb file
- Put empty class into bike.rb
- Ran the test and it passed
- Added test to require working?
- Ran test and it failed
- Added a method working? to bike.rb
- Ran test - passed

## Exercise 10

- We tested on pry to see what we got when we released a bike from the docking station. We got a NoMethodError because no instance of class was returned by release.bike method.

- We decided to return a new instance of bike when we released a bike from teh docking station.

- We added a test to expect that when we release a bike from the docking station a new bike class instance would be created and we can run the working? method on this bike instance.

- We added a require relative from the docking station file to the bike file. This means that when the docking station file is opened, it can link to the bike class in the bike.rb file.

- When checking if bike is working we created a response to say the bike is working.


## Exercise 11

Added 2 new user stories:

As a member of the public
So I can return bikes I've hired
I want to dock my bike at the docking station

As a member of the public
So I can decide whether to use the docking station
I want to see a bike that has been docked
=======
# boris_bikes
>>>>>>> 24070824de4fee5da7a3e7f7c6d7c20a308a699b
