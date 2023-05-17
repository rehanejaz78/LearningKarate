Feature: Example of Conditional Statements
  Scenario: Conditional Statements evaluation
    * url 'https://reqres.in/api/users?page=2'
    * method get
    * status 200
    * def outputID = []
    * def outputEmail = []
    * def outputName = []
#    * eval for(var i=0;i<response.data.length;i++) if(response.data[i].first_name == 'Michael') outputEmail[i]=response.data[i].email
    * eval for(var i=0;i<response.data.length;i++) if(response.data[i].id<14) outputEmail[i]=response.data[i].email,outputName[i]=response.data[i].first_name


    * print response
    * print outputEmail
    * print outputName

#  match responseType == 'json'