Feature: SCUBA benchmark case admin_032_001 - Create the Ingredients global value set

  # Original request: Please add a global value set called Ingredients and include these picklist options: sugar, butter, and milk. Make sure the values are displayed A–Z.
  # Interpretation: Option "Sort values alphabetically, not in the order entered" <- values displayed alphabetically

  Scenario: Administrator creates the "Ingredients" global value set
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I search for "Picklist Value Sets" in the "Quick Find" search field
    And I click the "Picklist Value Sets" link in the Setup sidebar
    And I wait until the "Picklist Value Sets" page is ready
    And I click the "New" button in the "Global Value Sets" section
    And I wait until the global value set edit page shows the "Label" field
    And I fill "Ingredients" in the "Label" text field on the global value set edit page
    And I enter the values "sugar", "butter" and "milk" in the values text area on the global value set edit page, one value per line
    And I check the "Sort values alphabetically, not in the order entered" checkbox on the global value set edit page
    And I click the "Save" button on the global value set edit page
    And I wait until the "Ingredients" global value set detail page is ready
    Then the "Ingredients" global value set should list the values "sugar", "butter" and "milk" in alphabetical order
