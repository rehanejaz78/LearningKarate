Feature: Get Feature
  Scenario: Get Scenario
    Given url "https://reqres.in/api/users/2"
    When method get
    Then status 200
    And print "Response ... ", response
    ..........