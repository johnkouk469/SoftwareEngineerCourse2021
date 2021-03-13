Feature: Create/manage an event
  
  Background:
    Given that I am logged in
    And that I am an organisation
    
  Scenario: Create an event
    When I select the option "Create an event"
    Then a new event is created
    And I am asked to submit event information
    | Name              | Sfhmmy 12      |                                      | minium 3 characters|
    | Place             | Online         |                                      ||
    | Date              | 23-25 of April |                                      ||
    | Special outfit    | Pijamas        |                                      ||
    | Special Equipment |Internect Access|                                      ||
    | Status            |in progress     |recruiting OR in progress OR completed| maximum of 1|
    And I should see a message saying "New event created"
    And I should prompted to this event page
      
  Scenario: Edit an event
    Given I have created an event
    And I am viewing the event page
    When I select the option "Edit Event"
    Then I should be allowed to edit information
    And I am asked to submit event information
    | Name              | Sfhmmy 12      |                                      | minium 3 characters|
    | Place             | Online         |                                      ||
    | Date              | 23-25 of April |                                      ||
    | Special outfit    | Pijamas        |                                      ||
    | Special Equipment |Internect Access|                                      ||
    | Status            |in progress     |recruiting OR in progress OR completed| maximum of 1|
    And I should see a message saying "Event successfully edited"
    And I should prompted to this event page
    
  Scenario: Unsuccesfuly sumbiting/editing event information
    Given that I am submiting or editing event information
    When My information violates one or more limitations
    Then I should see a message saying "Invalid Inormation" in #ff0000
    And I should be prompted to enter the event information again
    
  Scenario: Delete an event
    Given I have created an event
    And I am viewing the event page
    When I select the option "Delete Event"
    Then I should be able to delete the event.
    And I should see a message saying "Are you sure you want to delete the event?"
    When I select "Yes"
    Then the event is deleted
    And I should see a message saying "Event is deleted"
    And I should prompted to the main page
    When I select "No"
    Then I should prompted to the event page
