Feature: SCUBA benchmark case service_002_004 - Create the ratings assignment rule

  # Original request: Add an assignment rule named ratings that assigns accounts whose Rating is anything other than Cold to Security User. Set its sort order to 1.
  # Interpretation: Criteria field "Account: Rating" <- "accounts whose Rating"
  # Interpretation: Assignee type "User" named "Security User" <- "to Security User"

  Scenario: Support administrator creates the ratings assignment rule
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I search for "Case Assignment Rules" in the "Quick Find" search field
    And I click the "Case Assignment Rules" link in the Setup sidebar
    And I wait until the "Case Assignment Rules" page is ready
    And I click the "New" button on the "Case Assignment Rules" page
    And I wait until the assignment rule edit page shows the "Rule Name" field
    And I fill "ratings" in the "Rule Name" text field on the assignment rule edit page
    And I click the "Save" button on the assignment rule edit page
    And I wait until the "Case Assignment Rules" page lists "ratings"
    And I click the "ratings" link in the Case Assignment Rules list
    And I wait until the "ratings" assignment rule detail page is ready
    And I click the "New" button in the "Rule Entries" section
    And I wait until the rule entry edit page shows the "Sort Order" field
    And I fill "1" in the "Sort Order" text field on the rule entry edit page
    And I select "Account: Rating" from the "Field 1" picklist on the rule entry edit page
    And I select "not equal to" from the "Operator 1" picklist on the rule entry edit page
    And I fill "Cold" in the "Value 1" text field on the rule entry edit page
    And I select "User" from the "Search scope" picklist in the "Select the user or queue to assign the case to" section
    And I fill "Security User" in the assignee text field in the "Select the user or queue to assign the case to" section
    And I click the "Save" button on the rule entry edit page
    And If the rule entry edit page asks to choose between matching users, select the Security User user and click the "Save" button again
    And I wait until the "ratings" assignment rule detail page is ready
    Then the "Rule Entries" section should show the criteria Rating not equal to "Cold", assigned to the user Security User, with Sort Order 1
