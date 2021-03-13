Feature: Suggest a current volunteer event
  Background: Given that I am logged in 
              And I am a user
              And I have inserted my personal information
              
  Scenario: Suggest a current volunteer event
                When I am viewing the homepage 
                Then I should be suggested 