Feature: Hcc login request feature

  Background:
    * configure ssl = true
  Scenario: Handling token
    * url 'https://qa-hcc.mynisum.com:10443/api/v1/auth/login'
    * request {"username": "reejaz@nisum.com", "password": "nisum123"}
    * method post
    * status 200
    * def authToken = response.objectData.accessToken
    * print authToken



