Feature: SCUBA benchmark case admin_014_003 - Create the Account Website Match matching rule

  # Original request: Could you add an Account matching rule titled "Account Website Match"? Configure Website to match exactly, and keep the Match Blank Field checkbox unselected.
  # Interpretation: Matching Method "Exact" <- the request asks for exact matching on Website

  Scenario: Administrator creates the "Account Website Match" matching rule on Account
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I search for "Matching Rules" in the "Quick Find" search field
    And I click the "Matching Rules" link in the Setup sidebar
    And I wait until the "Matching Rules" page is ready
    And I click the "New Rule" button on the "Matching Rules" page
    And I wait until the matching rule object step is ready
    And I select "Account" from the "Object" picklist on the new matching rule page
    And I click the "Next" button on the new matching rule page
    And I wait until the "Rule Name" field is shown on the matching rule edit page
    And I fill "Account Website Match" in the "Rule Name" text field on the matching rule edit page
    And I select "Website" from the "Field" picklist in matching criteria row 1
    And I select "Exact" from the "Matching Method" picklist in matching criteria row 1
    And I make sure the "Match Blank Fields" checkbox in matching criteria row 1 is unchecked
    And I click the "Save" button on the matching rule edit page
    And I wait until the "Account Website Match" matching rule detail page is ready
    Then the "Account Website Match" matching rule should show the criterion Website with Matching Method "Exact" and Match Blank Fields off
