Feature: SCUBA benchmark case admin_014_002 - Create the Lead Phone Match matching rule

  # Original request: Build a Lead matching rule named "Lead Phone Match" where the Phone field uses the Fuzzy method. Also, don’t count empty values—leave the Match Blank Field box unchecked.
  # Interpretation: Matching Method "Fuzzy" <- the request asks for fuzzy matching on Phone

  Scenario: Administrator creates the "Lead Phone Match" matching rule on Lead
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I search for "Matching Rules" in the "Quick Find" search field
    And I click the "Matching Rules" link in the Setup sidebar
    And I wait until the "Matching Rules" page is ready
    And I click the "New Rule" button on the "Matching Rules" page
    And I wait until the matching rule object step is ready
    And I select "Lead" from the "Object" picklist on the new matching rule page
    And I click the "Next" button on the new matching rule page
    And I wait until the "Rule Name" field is shown on the matching rule edit page
    And I fill "Lead Phone Match" in the "Rule Name" text field on the matching rule edit page
    And I select "Phone" from the "Field" picklist in matching criteria row 1
    And I select "Fuzzy" from the "Matching Method" picklist in matching criteria row 1
    And I make sure the "Match Blank Fields" checkbox in matching criteria row 1 is unchecked
    And I click the "Save" button on the matching rule edit page
    And I wait until the "Lead Phone Match" matching rule detail page is ready
    Then the "Lead Phone Match" matching rule should show the criterion Phone with Matching Method "Fuzzy" and Match Blank Fields off
