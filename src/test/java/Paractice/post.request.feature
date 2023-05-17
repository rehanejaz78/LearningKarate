Feature: Create user request
  Scenario: Post request

    * def payload =
    """
    {

    "name": '#(name)',
    "job": '#(job)'

    }
    """

    * url "https://reqres.in/api/users"
    #* request payload
    * request {"name": "Rehan Ejaz", "job": "Automation Engineer"}
    * method post
    * status 201
    * match response.name == "Rehan Ejaz"
    * print response
  * print 'Post Request'

