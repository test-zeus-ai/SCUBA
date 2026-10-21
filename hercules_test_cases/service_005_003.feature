Feature: SCUBA benchmark case service_005_003 - Create the Premium Phone Support entitlement

  # Original request: I checked the SLA for Next Horizon Technologies—Phone Support begins in three days and remains active for 1 year plus 30 days. Please add an entitlement record titled Premium Phone Support.
  # Interpretation: Start Date "3 days from today" <- "begins in three days"
  # Interpretation: End Date "1 year and 33 days from today" <- "remains active for 1 year plus 30 days"

  Scenario: Support agent creates the Premium Phone Support entitlement for Next Horizon Technologies
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Entitlements" item in the App Launcher
    And I wait until the Entitlements list view is ready
    And I click the "New" button on the Entitlements list
    And I wait until the "New Entitlement" modal is ready
    And I fill "Premium Phone Support" in the "Entitlement Name" text field
    And I search for "Next Horizon Technologies" in the "Account Name" lookup
    And I select the exact matching account "Next Horizon Technologies"
    And I wait until the "Account Name" lookup shows "Next Horizon Technologies"
    And I select "Phone Support" from the "Type" picklist
    And I fill "3 days from today" in the "Start Date" date field in the "New Entitlement" modal
    And I fill "1 year and 33 days from today" in the "End Date" date field in the "New Entitlement" modal
    And I click the "Save" button in the "New Entitlement" modal
    And I wait until the Entitlement record page opens
    Then the Entitlement record page should show "Premium Phone Support" with Account Name "Next Horizon Technologies", Type "Phone Support", Start Date 3 days from today and End Date 1 year and 33 days from today
