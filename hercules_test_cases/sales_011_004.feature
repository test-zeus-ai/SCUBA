Feature: SCUBA benchmark case sales_011_004 - Create a territory model with an assignment rule

  # Original request: If sales territory is disabled, enable it. After that, create a territory model named 'Global Sales Territory' with a rule also called 'Global Sales Territory'. Set the selection criteria to include only records where Customer Priority is High.
  # Interpretation: Customer Priority filter operator "equals" <- "Customer Priority is High"

  Scenario: Sales administrator enables territories and creates the Global Sales Territory model
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I search for "Territory Settings" in the "Quick Find" search field
    And I click the "Territory Settings" link in the Setup sidebar
    And I wait until the "Territory Settings" page is ready
    And I wait until the "Territory Settings" page shows the "Disable Sales Territory" button, which means sales territory is enabled
    And I search for "Territory Models" in the "Quick Find" search field
    And I click the "Territory Models" link in the Setup sidebar
    And I wait until the "Territory Models" page is ready
    And I click the "New" button on the "Territory Models" page
    And I wait until the "New Territory Model" page is ready
    And I fill "Global Sales Territory" in the "Label" text field on the "New Territory Model" page
    And I click the "Save" button on the "New Territory Model" page
    And I wait until the "Global Sales Territory" territory model page is ready
    And I click the "View Rules" button on the territory model detail page
    And I wait until the "Object Territory Assignment Rules" page is ready
    And I click the "New Rule" button on the "Object Territory Assignment Rules" page
    And I wait until the assignment rule edit page shows the "Rule Name" field
    And I fill "Global Sales Territory" in the "Rule Name" text field on the assignment rule edit page
    And I select "Account: Customer Priority" from the "Field 1" picklist on the assignment rule edit page
    And I select "equals" from the "Operator 1" picklist on the assignment rule edit page
    And I fill "High" in the "Value 1" text field on the assignment rule edit page
    And I click the "Save" button on the assignment rule edit page
    And I wait until the "Global Sales Territory" assignment rule detail page is ready
    Then the "Global Sales Territory" assignment rule should show the criteria "Customer Priority" equals "High"
