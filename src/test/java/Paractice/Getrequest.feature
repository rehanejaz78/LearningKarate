Feature: Example of Conditional Statements
  Scenario: Conditional Statements evaluation
    * url 'https://reqres.in/api/users?page=2'
    * method get
    * status 200
    * def outputID = []
    * def outputEmail = []
    * def outputFirstName = []
#    * eval for(var i=0;i<response.data.length;i++) if(response.data[i].first_name == 'Michael') outputEmail[i]=response.data[i].email
   # * eval for(var i=0;i<response.data.length;i++) if(response.data[i].id==7) outputEmail[i]=response.data[i].email,outputFirstName[i]=response.data[i].first_name

    * eval for(var i=0;i<response.data.length;i++) if(response.data[i].id == '10') outputEmail[0]=response.data[i].email,outputFirstName[0]=response.data[i].first_name
    * print response
    * print outputEmail
    * print outputFirstName

#  match responseType == 'json'