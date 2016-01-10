The Specification is shown below the header "Bill unattended test".  

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