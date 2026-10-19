Feature: SCUBA benchmark case sales_011_002 - Create a territory model with an assignment rule

  # Original request: Could you set up a territory model named 'by Employees' with the rule name 'Number of Employees and Year'? Apply this filter: total employees is less than or equal to 50 and account year started is greater than or equal to 2020. Also, make sure sales territory is turned on if it isn’t already.
  # Interpretation: filter field "Employees" <- "total employees"
  # Interpretation: filter field "Year Started" <- "account year started"

  Scenario: Sales administrator enables territories and creates the by Employees model
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
    And I fill "by Employees" in the "Label" text field on the "New Territory Model" page
    And I click the "Save" button on the "New Territory Model" page
    And I wait until the "by Employees" territory model page is ready
    And I click the "View Rules" button on the territory model detail page
    And I wait until the "Object Territory Assignment Rules" page is ready
    And I click the "New Rule" button on the "Object Territory Assignment Rules" page
    And I wait until the assignment rule edit page shows the "Rule Name" field
    And I fill "Number of Employees and Year" in the "Rule Name" text field on the assignment rule edit page
    And I select "Account: Employees" from the "Field 1" picklist on the assignment rule edit page
    And I select "less or equal" from the "Operator 1" picklist on the assignment rule edit page
    And I fill "50" in the "Value 1" text field on the assignment rule edit page
    And I select "Account: Year Started" from the "Field 2" picklist on the assignment rule edit page
    And I select "greater or equal" from the "Operator 2" picklist on the assignment rule edit page
    And I fill "2020" in the "Value 2" text field on the assignment rule edit page
    And I click the "Save" button on the assignment rule edit page
    And I wait until the "Number of Employees and Year" assignment rule detail page is ready
    Then the "Number of Employees and Year" assignment rule should show the criteria "Employees" less or equal "50"; "Year Started" greater or equal "2020"
