The Specification is shown below the header "Bill unattended test".  

The app pulls some json from a url, parses it, and is presented in a view on the root path.    

Deployed online [here](https://bill-unattended.herokuapp.com/) using Heroku.  

###Technologies and Design Principles:   
It has been built on Ruby & Sinatra. Sinatra was chosen for two reasons:  
1. I had only one day to build this so, given the limited time, I chose Ruby as a language because it is my strongest one at the moment.  
2. Although Rails is quicker to get everything up and running, it felt a bit heavy-handed for such a small app.  

The CSS is based around Bootstrap. I use Bootstrap for most things and, especially given the limited time, it was the natural choice. I really would have liked to have gotten Sass up and running for this but, after some grappling trying to get it compiling, time became too pressing so I gave up.  

As always, the SOLID principles were kept in mind throughout and I strove for clean readable code.    

It was built using TDD throughout. Testing technology was RSpec.    

####To run locally:  
`git clone git@github.com:Yorkshireman/bill_unattended.git`  
`bundle install`  
`rackup`  
- go to [localhost:9292](http://localhost:9292) in your browser.  

###Testing:  
To run the tests:  
`rspec`  

In the tests the http request is stubbed to return (effectively) a copy of that response and that copy resides in the `test_data_hash` module in `/spec/support/`.  

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