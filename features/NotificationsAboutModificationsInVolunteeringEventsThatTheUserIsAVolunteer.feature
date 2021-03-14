Feature: Notifications about modifications in volunteering events that the user is a volunteer

Background: Given that I am logged in								         
  And that I am a user
	And that I have applied for a volunteering event
Scenario:Notification about changes in the volunteering event
	   Given that the organization has modified the volunteering event’s information
     Then the notification system should send me a notification informing me about the  changes in the volunteering event’s information.
	   When I press on the notification
     Then I should be redirected to the organization profile screen.

