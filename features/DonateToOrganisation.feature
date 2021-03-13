Feature: Donate to Organisation
  
  Background:
  Given that I am logged in
  And I am a user
  And I am viewing the profile of an organisation
  
  
  Scenario: Donate
    When I select the option "Donate"
    Then I am prompted to the electronic payment system
    When payment is successful
    Then I should see a message saying "Donation was successful"
    And I should be prompted to the profile of an organisation
    When payment is not successful
    Then I should see a message saying "Something went wrong"
    And I should be prompted to the profile of an organisation

  