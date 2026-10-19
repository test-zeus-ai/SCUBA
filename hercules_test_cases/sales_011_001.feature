Feature: SCUBA benchmark case sales_011_001 - Create a territory model with an assignment rule

  # Original request: Spin up a new territory model called 'by revenue'. Give its rule the name 'annual revenue is USD'. Filter the selection to accounts where annual revenue is greater than 10,000. If sales territory isn’t enabled yet, please enable it.
  # Interpretation: Annual Revenue filter value "10000" <- "annual revenue is greater than 10,000"

  Scenario: Sales administrator enables territories and creates the by revenue model
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
    And I fill "by revenue" in the "Label" text field on the "New Territory Model" page
    And I click the "Save" button on the "New Territory Model" page
    And I wait until the "by revenue" territory model page is ready
    And I click the "View Rules" link on the territory model page
    And I wait until the "Assignment Rules" page is ready
    And I click the "New" button on the "Assignment Rules" page
    And I wait until the "Assignment Rule Edit" page is ready
    And I fill "annual revenue is USD" in the "Rule Name" text field on the "Assignment Rule Edit" page
    And I select "Annual Revenue" from the "Field" picklist in row 1 of the "Rule Criteria" section
    And I select "greater than" from the "Operator" picklist in row 1 of the "Rule Criteria" section
    And I fill "10000" in the "Value" field in row 1 of the "Rule Criteria" section
    And I click the "Save" button on the "Assignment Rule Edit" page
    And I wait until the "annual revenue is USD" assignment rule detail page is ready
    Then the "annual revenue is USD" assignment rule should show the criteria "Annual Revenue" greater than "10000"
