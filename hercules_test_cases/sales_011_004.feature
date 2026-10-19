Feature: SCUBA benchmark case sales_011_004 - Create a territory model with an assignment rule

  # Original request: If sales territory is disabled, enable it. After that, create a territory model named 'Global Sales Territory' with a rule also called 'Global Sales Territory'. Set the selection criteria to include only records where Customer Priority is High.
  # Interpretation: Customer Priority filter operator "equals" <- "Customer Priority is High"

  Scenario: Sales administrator enables territories and creates the Global Sales Territory model
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I search for "Territory Settings" in the "Quick Find" search field
    And I click the "Settings" link under "Territories" in the Setup sidebar
    And I wait until the "Territory Settings" page is ready
    And I make sure Territory Management is enabled on the "Territory Settings" page, clicking the "Enable Territory Management" button only if it is shown
    And I search for "Territory Models" in the "Quick Find" search field
    And I click the "Territory Models" link in the Setup sidebar
    And I wait until the "Territory Models" page is ready
    And I click the "New" button on the "Territory Models" page
    And I wait until the "New Territory Model" page is ready
    And I fill "Global Sales Territory" in the "Label" text field on the "New Territory Model" page
    And I click the "Save" button on the "New Territory Model" page
    And I wait until the "Global Sales Territory" territory model page is ready
    And I click the "View Rules" link on the territory model page
    And I wait until the "Assignment Rules" page is ready
    And I click the "New" button on the "Assignment Rules" page
    And I wait until the "Assignment Rule Edit" page is ready
    And I fill "Global Sales Territory" in the "Rule Name" text field on the "Assignment Rule Edit" page
    And I select "Customer Priority" from the "Field" picklist in row 1 of the "Rule Criteria" section
    And I select "equals" from the "Operator" picklist in row 1 of the "Rule Criteria" section
    And I fill "High" in the "Value" field in row 1 of the "Rule Criteria" section
    And I click the "Save" button on the "Assignment Rule Edit" page
    And I wait until the "Global Sales Territory" assignment rule detail page is ready
    Then the "Global Sales Territory" assignment rule should show the criteria "Customer Priority" equals "High"
