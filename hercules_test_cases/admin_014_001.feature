Feature: SCUBA benchmark case admin_014_001 - Create the Contact with Fuzzy Logic matching rule

  # Original request: Please set up a rule on the Contact object called "Contact with Fuzzy Logic." For the Email field, require an Exact match, and make sure the Match Blank Field option stays off.
  # Interpretation: Matching Method "Exact" <- the request asks for exact matching on Email

  Scenario: Administrator creates the "Contact with Fuzzy Logic" matching rule on Contact
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I search for "Matching Rules" in the "Quick Find" search field
    And I click the "Matching Rules" link in the Setup sidebar
    And I wait until the "Matching Rules" page is ready
    And I click the "New Rule" button on the "Matching Rules" page
    And I wait until the matching rule object step is ready
    And I select "Contact" from the "Object" picklist on the new matching rule page
    And I click the "Next" button on the new matching rule page
    And I wait until the "Rule Name" field is shown on the matching rule edit page
    And I fill "Contact with Fuzzy Logic" in the "Rule Name" text field on the matching rule edit page
    And I select "Email" from the "Field" picklist in matching criteria row 1
    And I select "Exact" from the "Matching Method" picklist in matching criteria row 1
    And I make sure the "Match Blank Fields" checkbox in matching criteria row 1 is unchecked
    And I click the "Save" button on the matching rule edit page
    And I wait until the "Contact with Fuzzy Logic" matching rule detail page is ready
    Then the "Contact with Fuzzy Logic" matching rule should show the criterion Email with Matching Method "Exact" and Match Blank Fields off
