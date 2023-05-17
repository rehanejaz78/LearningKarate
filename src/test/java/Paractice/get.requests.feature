Feature: Get Feature
  Background:
    * def info = call read('post.request.feature') {name:"Rehan Ejaz" , job:"Automation Engineer"}
    * def userDetails = read("../schemaValidation/userinfo.json")

    @smoke
  Scenario: Get Scenario

    Given url    baseUrl+"/2"
    When method get
    Then status 200
    And match response == userDetails
