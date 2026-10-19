Feature: SCUBA benchmark case sales_011_003 - Create a territory model with an assignment rule

  # Original request: Please ensure sales territory is enabled. Then create a territory model titled 'by Finance Industry' and assign the rule name 'Industry, Active and Type'. Configure the criteria so that Industry equals Finance, Account equals Active, and Type is not equal to Channel Partner / Reseller or Installation Partner.
  # Interpretation: Active filter value "Yes" <- "Account equals Active"
  # Interpretation: Type filter value "Channel Partner / Reseller,Installation Partner" <- "Type is not equal to Channel Partner / Reseller or Installation Partner"

  Scenario: Sales administrator enables territories and creates the by Finance Industry model
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
    And I fill "by Finance Industry" in the "Label" text field on the "New Territory Model" page
    And I click the "Save" button on the "New Territory Model" page
    And I wait until the "by Finance Industry" territory model page is ready
    And I click the "View Rules" link on the territory model page
    And I wait until the "Assignment Rules" page is ready
    And I click the "New" button on the "Assignment Rules" page
    And I wait until the "Assignment Rule Edit" page is ready
    And I fill "Industry, Active and Type" in the "Rule Name" text field on the "Assignment Rule Edit" page
    And I select "Industry" from the "Field" picklist in row 1 of the "Rule Criteria" section
    And I select "equals" from the "Operator" picklist in row 1 of the "Rule Criteria" section
    And I fill "Finance" in the "Value" field in row 1 of the "Rule Criteria" section
    And I select "Active" from the "Field" picklist in row 2 of the "Rule Criteria" section
    And I select "equals" from the "Operator" picklist in row 2 of the "Rule Criteria" section
    And I fill "Yes" in the "Value" field in row 2 of the "Rule Criteria" section
    And I select "Type" from the "Field" picklist in row 3 of the "Rule Criteria" section
    And I select "not equal to" from the "Operator" picklist in row 3 of the "Rule Criteria" section
    And I fill "Channel Partner / Reseller,Installation Partner" in the "Value" field in row 3 of the "Rule Criteria" section
    And I click the "Save" button on the "Assignment Rule Edit" page
    And I wait until the "Industry, Active and Type" assignment rule detail page is ready
    Then the "Industry, Active and Type" assignment rule should show the criteria "Industry" equals "Finance"; "Active" equals "Yes"; "Type" not equal to "Channel Partner / Reseller,Installation Partner"
