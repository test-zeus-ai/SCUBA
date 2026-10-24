Feature: SCUBA benchmark case service_005_002 - Create the Standard Web Support entitlement

  # Original request: As outlined in the SLA, Greentrail Logistics should have Web Support starting two weeks from now and continuing for 18 months. Go ahead and create an entitlement record named Standard Web Support.
  # Interpretation: Start Date "14 days from today" <- "starting two weeks from now"
  # Interpretation: End Date "18 months and 14 days from today" <- "continuing for 18 months"

  Scenario: Support agent creates the Standard Web Support entitlement for Greentrail Logistics
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Entitlements" item in the App Launcher
    And I wait until the Entitlements list view is ready
    And I click the "New" button on the Entitlements list
    And I wait until the "New Entitlement" modal is ready
    And I fill "Standard Web Support" in the "Entitlement Name" text field
    And I search for "Greentrail Logistics" in the "Account Name" lookup
    And I select the exact matching account "Greentrail Logistics"
    And I wait until the "Account Name" lookup shows "Greentrail Logistics"
    And I select "Web Support" from the "Type" picklist
    And I fill "14 days from today" in the "Start Date" date field in the "New Entitlement" modal
    And I fill "18 months and 14 days from today" in the "End Date" date field in the "New Entitlement" modal
    And I click the "Save" button in the "New Entitlement" modal
    And I wait until the Entitlement record page opens
    Then the Entitlement record page should show "Standard Web Support" with Account Name "Greentrail Logistics", Type "Web Support", Start Date 14 days from today and End Date 18 months and 14 days from today
