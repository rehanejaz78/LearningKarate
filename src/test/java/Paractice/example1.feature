Feature: create airline
  Background:
    * def randomId = Java.type("Utilities.RandomNumber").generateRandomInt(1,10000)

  Scenario: Create airline request


    * def payload =
    """
    {
    "id": #(randomId) ,
    "name": "Pakistan Airways",
    "country": "Pakistan",
    "logo": "https://upload.wikimedia.org/wikipedia/en/thumb/9/9b/Qatar_Airways_Logo.svg/sri_lanka.png",
    "slogan": "From Karachi",
    "head_quaters": "Katunayake, Islamabad",
    "website": "www.pakistanairways.com",
    "established": "1990"
}
    """
    * url "https://api.instantwebtools.net/v1/airlines"
    * request payload
    * method post
    * status 200
    * print response