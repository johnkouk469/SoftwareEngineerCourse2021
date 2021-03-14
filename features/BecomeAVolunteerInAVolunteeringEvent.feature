Feature: Become a volunteer in a volunteering event


Background: 
  Given that I am logged in								         
  And that I am a user
Scenario: Apply for a current volunteer event as a volunteer
		Given that I am viewing the organisation profile
    And I am viewing an event’ s information  
		And the event is current
		When I press the Apply For Event button 
    Then I should receive an appropriate message “ You have been accepted as a participant in the event <event_name>”
Scenario: Apply for a non current volunteer event as a volunteer
	  Given that I am viewing the organisation profile
    And I am viewing an event’s information  
    And the event is  non current
	  When I press the Apply For Event button 
    Then I should receive an appropriate message  “You cannot apply to this event as the number of participants has been fulfilled”
