Feature: The notification system sends notifications about volunteering events of an organization that I am a member of
  
  Background: 
Given that I am logged in									
And that I am a user
And I am a member of an organisation

Scenario: The notification system sends me a notification successfully 
When the organisation creates a new current volunteer event 
	Then the notification system should send me a notification about the new volunteering event
	When I press on the notification
Then I should be redirected to the organisation profile screen.
