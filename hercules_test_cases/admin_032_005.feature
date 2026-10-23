Feature: SCUBA benchmark case admin_032_005 - Create the CustomerSatisfactionLevel global value set

  # Original request: Create a global value set named CustomerSatisfactionLevel and add the following choices: Very Satisfied, Satisfied, Neutral, Unsatisfied, Very Unsatisfied, Not Applicable. Order them A to Z.
  # Interpretation: Option "Sort values alphabetically, not in the order entered" <- values displayed alphabetically

  Scenario: Administrator creates the "CustomerSatisfactionLevel" global value set
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I search for "Picklist Value Sets" in the "Quick Find" search field
    And I click the "Picklist Value Sets" link in the Setup sidebar
    And I wait until the "Picklist Value Sets" page is ready
    And I click the "New" button in the "Global Value Sets" section
    And I wait until the global value set edit page shows the "Label" field
    And I fill "CustomerSatisfactionLevel" in the "Label" text field on the global value set edit page
    And I enter the values "Very Satisfied", "Satisfied", "Neutral", "Unsatisfied", "Very Unsatisfied" and "Not Applicable" in the values text area on the global value set edit page, one value per line
    And I check the "Sort values alphabetically, not in the order entered" checkbox on the global value set edit page
    And I click the "Save" button on the global value set edit page
    And I wait until the "CustomerSatisfactionLevel" global value set detail page is ready
    Then the "CustomerSatisfactionLevel" global value set should list the values "Very Satisfied", "Satisfied", "Neutral", "Unsatisfied", "Very Unsatisfied" and "Not Applicable" in alphabetical order
