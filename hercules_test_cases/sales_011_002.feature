Feature: SCUBA benchmark case sales_011_002 - Create a territory model with an assignment rule

  # Original request: Could you set up a territory model named 'by Employees' with the rule name 'Number of Employees and Year'? Apply this filter: total employees is less than or equal to 50 and account year started is greater than or equal to 2020. Also, make sure sales territory is turned on if it isn’t already.
  # Interpretation: filter field "Employees" <- "total employees"
  # Interpretation: filter field "Year Started" <- "account year started"

  Scenario: Sales administrator enables territories and creates the by Employees model
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
    And I fill "by Employees" in the "Label" text field on the "New Territory Model" page
    And I click the "Save" button on the "New Territory Model" page
    And I wait until the "by Employees" territory model page is ready
    And I click the "View Rules" link on the territory model page
    And I wait until the "Assignment Rules" page is ready
    And I click the "New" button on the "Assignment Rules" page
    And I wait until the "Assignment Rule Edit" page is ready
    And I fill "Number of Employees and Year" in the "Rule Name" text field on the "Assignment Rule Edit" page
    And I select "Employees" from the "Field" picklist in row 1 of the "Rule Criteria" section
    And I select "less or equal" from the "Operator" picklist in row 1 of the "Rule Criteria" section
    And I fill "50" in the "Value" field in row 1 of the "Rule Criteria" section
    And I select "Year Started" from the "Field" picklist in row 2 of the "Rule Criteria" section
    And I select "greater or equal" from the "Operator" picklist in row 2 of the "Rule Criteria" section
    And I fill "2020" in the "Value" field in row 2 of the "Rule Criteria" section
    And I click the "Save" button on the "Assignment Rule Edit" page
    And I wait until the "Number of Employees and Year" assignment rule detail page is ready
    Then the "Number of Employees and Year" assignment rule should show the criteria "Employees" less or equal "50"; "Year Started" greater or equal "2020"
