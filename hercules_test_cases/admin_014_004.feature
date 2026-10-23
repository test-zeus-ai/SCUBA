Feature: SCUBA benchmark case admin_014_004 - Create the Address matching matching rule

  # Original request: Create a rule called "Address matching" on the Address object: set the Address field to use Fuzzy matching, and do not tick the Match Blank Field box.
  # Interpretation: Fuzzy matching method for the Address field <- the request asks for fuzzy matching on Address

  Scenario: Administrator creates the "Address matching" matching rule on Address
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I search for "Matching Rules" in the "Quick Find" search field
    And I click the "Matching Rules" link in the Setup sidebar
    And I wait until the "Matching Rules" page is ready
    And I click the "New Rule" button on the "Matching Rules" page
    And I wait until the matching rule object step is ready
    And I select "Address" from the "Object" picklist on the new matching rule page
    And I click the "Next" button on the new matching rule page
    And I wait until the "Rule Name" field is shown on the matching rule edit page
    And I fill "Address matching" in the "Rule Name" text field on the matching rule edit page
    And I select "Address" from the "Field" picklist in matching criteria row 1
    And I select the fuzzy matching method offered for the "Address" field from the "Matching Method" picklist in matching criteria row 1
    And I make sure the "Match Blank Fields" checkbox in matching criteria row 1 is unchecked
    And I click the "Save" button on the matching rule edit page
    And I wait until the "Address matching" matching rule detail page is ready
    Then the "Address matching" matching rule should show the criterion Address with a fuzzy Matching Method and Match Blank Fields off
