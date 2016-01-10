The Specification is shown below the header "Bill unattended test".  

###Technologies and Design Principles:   
It has been built on Ruby & Sinatra. The CSS is based around Bootstrap.  

The app pulls some json from a url, parses it, and is presented in a view on the root path.  

Separation of concerns and the Single Responsibilty Principle have been kept in mind throughout.  

It was built using TDD throughout. Testing technology was RSpec.  

Deployed online [here](https://bill-unattended.herokuapp.com/) using Heroku.  

To run locally:  
`git clone git@github.com:Yorkshireman/bill_unattended.git`  
`bundle install`  
`rackup`  
- go to [localhost:9292](localhost:9292) in your browser.  

###Testing:  
To run the tests:  
`rspec`  

In the tests the http request is stubbed to return (effectively) a copy of that data that resides in the `test_data_hash` module in `/spec/support/`.  

One test, in `/spec/services/get_bill_data_spec` does make the http request for real and compares the response to `test_data_hash`.  
  

# Bill unattended test

## Task

To display a customer's Sky bill

## Requirements

* Complete the task in a language of your choice using whatever tools or frameworks that you want.
* Must consume bill JSON from endpoint: 
```
http://safe-plains-5453.herokuapp.com/bill.json
```
* JSON must be consumed by a server acting as a proxy.
* Provide a README on how to run your app or, if you deploy it online, a URL to your app. 

## What we're looking for

* TDD/BDD
* Simple and eloquent code
* Knowledge of front end development
* Bill should be easy to understand (good user experience)