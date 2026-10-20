Feature: SCUBA benchmark case service_002_002 - Create the Network Cases Assignment Rule assignment rule

  # Original request: Configure a rule named Network Cases Assignment Rule that sends cases to the network support queue only when both are true: the description contains “network” and the case number starts with 7.
  # Interpretation: Rule entry Sort Order "1" <- the rule has one entry and Sort Order is required
  # Interpretation: Both criteria rows with no filter logic, so they are joined by AND <- "only when both are true"

  Scenario: Support administrator creates the Network Cases Assignment Rule assignment rule
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I search for "Case Assignment Rules" in the "Quick Find" search field
    And I click the "Case Assignment Rules" link in the Setup sidebar
    And I wait until the "Case Assignment Rules" page is ready
    And I click the "New" button on the "Case Assignment Rules" page
    And I wait until the assignment rule edit page shows the "Rule Name" field
    And I fill "Network Cases Assignment Rule" in the "Rule Name" text field on the assignment rule edit page
    And I click the "Save" button on the assignment rule edit page
    And I wait until the "Case Assignment Rules" page lists "Network Cases Assignment Rule"
    And I click the "Network Cases Assignment Rule" link in the Case Assignment Rules list
    And I wait until the "Network Cases Assignment Rule" assignment rule detail page is ready
    And I click the "New" button in the "Rule Entries" section
    And I wait until the rule entry edit page shows the "Sort Order" field
    And I fill "1" in the "Sort Order" text field on the rule entry edit page
    And I select "Case: Description" from the "Field 1" picklist on the rule entry edit page
    And I select "contains" from the "Operator 1" picklist on the rule entry edit page
    And I fill "network" in the "Value 1" text field on the rule entry edit page
    And I select "Case: Case Number" from the "Field 2" picklist on the rule entry edit page
    And I select "starts with" from the "Operator 2" picklist on the rule entry edit page
    And I fill "7" in the "Value 2" text field on the rule entry edit page
    And I select "Queue" from the assignee type picklist in the "Select the user or queue to assign the case to" section
    And I fill "network support" in the assignee text field in the "Select the user or queue to assign the case to" section
    And I click the "Save" button on the rule entry edit page
    And If the rule entry edit page asks to choose between matching queues, select the network support queue and click the "Save" button again
    And I wait until the "Network Cases Assignment Rule" assignment rule detail page is ready
    Then the "Rule Entries" section should show the criteria Description contains "network" AND Case Number starts with "7", assigned to the network support queue
