Feature: View Information of organisation/user/event
  
  Scenario:  Viewing Information of user/organisation
  Given that I am logged in
  When I am in the profile of a user/organisation
  Then I should be able to view all information of that user/organisation
  
  Scenario:  Viewing Information of event
  Given that I am logged in
  When I am in the page of an event
  Then I should be able to view all information of that event
  
  