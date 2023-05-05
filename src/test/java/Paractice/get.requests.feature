Feature: Get Feature
  Background:
    * def info = call read('post.request.feature') {name:"Rehan Ejaz" , job:"Automation Engineer"}
  Scenario: Get Scenario
  * print info.response
#    Given url "https://reqres.in/api/users/2"
#    When method get
#    Then status 200
#    And print "Response ... ", response
