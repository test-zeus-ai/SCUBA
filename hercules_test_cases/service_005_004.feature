Feature: SCUBA benchmark case service_005_004 - Create the Enterprise Chat Support entitlement

  # Original request: Per the SLA, White Industries account gets Web Support starting in two weeks from todayt and expiring six months later. Create an entitlement record named Enterprise Chat Support.
  # Interpretation: Start Date "14 days from today" <- "starting in two weeks from todayt"
  # Interpretation: End Date "6 months and 14 days from today" <- "expiring six months later"

  Scenario: Support agent creates the Enterprise Chat Support entitlement for White Industries
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Entitlements" item in the App Launcher
    And I wait until the Entitlements list view is ready
    And I click the "New" button on the Entitlements list
    And I wait until the "New Entitlement" modal is ready
    And I fill "Enterprise Chat Support" in the "Entitlement Name" text field
    And I search for "White Industries" in the "Account Name" lookup
    And I select the exact matching account "White Industries"
    And I wait until the "Account Name" lookup shows "White Industries"
    And I select "Web Support" from the "Type" picklist
    And I fill "14 days from today" in the "Start Date" date field in the "New Entitlement" modal
    And I fill "6 months and 14 days from today" in the "End Date" date field in the "New Entitlement" modal
    And I click the "Save" button in the "New Entitlement" modal
    And I wait until the Entitlement record page opens
    Then the Entitlement record page should show "Enterprise Chat Support" with Account Name "White Industries", Type "Web Support", Start Date 14 days from today and End Date 6 months and 14 days from today
