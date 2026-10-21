Feature: SCUBA benchmark case service_005_001 - Create the Standard Phone Support entitlement

  # Original request: Per our SLA, Old Balance is eligible for Phone Support that kicks in one week from today and runs for a full year. Please create an entitlement record for that account called Standard Phone Support.
  # Interpretation: Start Date "7 days from today" <- "kicks in one week from today"
  # Interpretation: End Date "1 year and 7 days from today" <- "runs for a full year"

  Scenario: Support agent creates the Standard Phone Support entitlement for Old Balance
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Entitlements" item in the App Launcher
    And I wait until the Entitlements list view is ready
    And I click the "New" button on the Entitlements list
    And I wait until the "New Entitlement" modal is ready
    And I fill "Standard Phone Support" in the "Entitlement Name" text field
    And I search for "Old Balance" in the "Account Name" lookup
    And I select the exact matching account "Old Balance"
    And I wait until the "Account Name" lookup shows "Old Balance"
    And I select "Phone Support" from the "Type" picklist
    And I fill "7 days from today" in the "Start Date" date field in the "New Entitlement" modal
    And I fill "1 year and 7 days from today" in the "End Date" date field in the "New Entitlement" modal
    And I click the "Save" button in the "New Entitlement" modal
    And I wait until the Entitlement record page opens
    Then the Entitlement record page should show "Standard Phone Support" with Account Name "Old Balance", Type "Phone Support", Start Date 7 days from today and End Date 1 year and 7 days from today
