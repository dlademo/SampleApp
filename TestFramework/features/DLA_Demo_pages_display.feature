Feature: This test is to validate the different page's functionality for the DLA-DEMO website
  Scenario: User validates the different page is functional
    Given user navigates to the DLA-DEMO webpage
    When user clicks on testing tab from homepage
    Then user is able to verify the testing page exist
    And user clicks on devops tab from homepage
    Then user is able to verify the devops page exist
    And user clicks on Software Development tab from homepage
    Then user is able to verify the Software Development page exist