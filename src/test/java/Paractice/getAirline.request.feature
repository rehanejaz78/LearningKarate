Feature: get airline with id

  Background:
    * def requestCall = call read('example1.feature')

  Scenario: Get request for arline with ID
    * url "https://api.instantwebtools.net/v1/airlines/" +requestCall.response.id
    * method get
    * status 200
    * print response
