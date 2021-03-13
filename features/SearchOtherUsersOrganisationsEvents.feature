Feature: Search other users/organisations/events
  
  Background:
    Given that I am logged in
    And I type in the search bar
    
    Scenario Outline: User/organisation searching 
    When the search phrase "<phrase>" is entered
    Then results for "<phrase>" are shown
    And the related results include "<related>"
    
    Examples: Names
      | phrase            | related       |
      | Robotics For All  | R4A           |
      | Tsardou           | Tsardoulias   |
      
    Examples: Information
      | phrase                      | related |
      | Age "21"                    | Christos Skapetis |
      | Founded "1999"              | R4A |
      | Accepting volunteers "yes"  | Greece 2021 Celebration |       

     Scenario: User/organisation searching failed
     When the search phrase is entered
     And no result matches
     Then I should see a message saying "No results"
     And I should be prompted to the main page
      
    
    
