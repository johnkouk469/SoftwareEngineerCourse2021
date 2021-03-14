Feature: Suggest Current volunteering event

Background:										
Given that I am logged in									  
And I am a user										

Scenario: Sufficient information to suggest event
Given I have inserted my personal information 
When I am viewing the homepage								
Then the notification system should be able to view my <information>	
|name | “Ioannis Papadopoulos” |-|-|
| age | 30  | minimum of 18 | maximum of 99|
| location | “Thessaloniki” |-|-|
| profession | “Teacher” |-|-|
| interests | “Hiking” |-|-|
| History of volunteer events | “Hellenic Rescue Team Expedition in Olympus (summer 2016)”|-|-|
And the notification system must provide the user with some <event options>
And I should be able to click an <event option>
When I click on an <event option> 
| event option | 
|”Tree planting in Chortiatis mountain (spring 2019)”|
| “First aid workshop” |
Then I should be redirected to the event information profile 

Scenario: Insufficient information to suggest current volunteer events
Given I have not inserted my personal information
When I am viewing the homepage								
Then the notification system should be able to see that my personal information is blank
Then I should see an appropriate message “You have to visit the manage user information section before being suggested an event!”
     




