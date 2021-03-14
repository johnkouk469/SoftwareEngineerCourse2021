Feature: Become member to organization
Background: 												
  Given that I am logged in									
  And that I am a user
Scenario: Become a member successfully								
  Given that I am viewing the organisation profile screen 					
  When I click on the Become A Member button 
  Then I should be able to see the message “You are now a member of the organization <organization_name>”
  When I visit my profile screen
	Then I should be able to see the new organisation in the “My Organisation Memberships” section 
	
