Feature: SCUBA benchmark case sales_011_003 - Create a territory model with an assignment rule

  # Original request: Please ensure sales territory is enabled. Then create a territory model titled 'by Finance Industry' and assign the rule name 'Industry, Active and Type'. Configure the criteria so that Industry equals Finance, Account equals Active, and Type is not equal to Channel Partner / Reseller or Installation Partner.
  # Interpretation: Active filter value "Yes" <- "Account equals Active"
  # Interpretation: Type filter rows "Channel Partner / Reseller" and "Installation Partner" <- "Type is not equal to Channel Partner / Reseller or Installation Partner"

  Scenario: Sales administrator enables territories and creates the by Finance Industry model
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I search for "Territory" in the "Quick Find" search field
    And I click the "Territory Settings" link in the Setup sidebar
    And I wait until the "Territory Settings" page is ready
    And I wait until the "Territory Settings" page shows the "Disable Sales Territory" button, which means sales territory is enabled
    And I click the "Territory Models" link in the Setup sidebar
    And I wait until the "Territory Models" page is ready
    And I click the "New" button on the "Territory Models" page
    And I wait until the "New Territory Model" page is ready
    And I fill "by Finance Industry" in the "Label" text field on the "New Territory Model" page
    And I click the "Save" button on the "New Territory Model" page
    And I wait until the "by Finance Industry" territory model page is ready
    And I click the "View Rules" button on the territory model detail page
    And I wait until the "Object Territory Assignment Rules" page is ready
    And I click the "New Rule" button on the "Object Territory Assignment Rules" page
    And I wait until the assignment rule edit page shows the "Rule Name" field
    And I fill "Industry, Active and Type" in the "Rule Name" text field on the assignment rule edit page
    And I select "Account: Industry" from the "Field 1" picklist on the assignment rule edit page
    And I select "equals" from the "Operator 1" picklist on the assignment rule edit page
    And I fill "Finance" in the "Value 1" text field on the assignment rule edit page
    And I select "Account: Active" from the "Field 2" picklist on the assignment rule edit page
    And I select "equals" from the "Operator 2" picklist on the assignment rule edit page
    And I fill "Yes" in the "Value 2" text field on the assignment rule edit page
    And I select "Account: Type" from the "Field 3" picklist on the assignment rule edit page
    And I select "not equal to" from the "Operator 3" picklist on the assignment rule edit page
    And I fill "Channel Partner / Reseller" in the "Value 3" text field on the assignment rule edit page
    And I select "Account: Type" from the "Field 4" picklist on the assignment rule edit page
    And I select "not equal to" from the "Operator 4" picklist on the assignment rule edit page
    And I fill "Installation Partner" in the "Value 4" text field on the assignment rule edit page
    And I click the "Save" button on the assignment rule edit page
    And I wait until the "Industry, Active and Type" assignment rule detail page is ready
    Then the "Industry, Active and Type" assignment rule should show the criteria "Industry" equals "Finance"; "Active" equals "Yes"; "Type" not equal to "Channel Partner / Reseller"; "Type" not equal to "Installation Partner"
