Feature: Get profile details from token
  Background:
    * def authToken = call read('hccLogin.feature')
Scenario: Handling token
  * def access_token = authToken.response.objectData.accessToken
* header Authorization = 'Bearer '+ access_token
* url 'https://qa-hcc.mynisum.com:10443/api/v1/general/user/profile'
* method get
* status 200
  * match response.objectData.fullName == "Rehan Ahmad"
  * print response