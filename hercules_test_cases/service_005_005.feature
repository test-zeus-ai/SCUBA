Feature: SCUBA benchmark case service_005_005 - Create the Premium Email Support Package entitlement

  # Original request: According to the service level agreement (SLA), the Innovate Ltd account has the phone support type entitlement, which starts in one week from today and expires in 18 months. Create an entitlement record named Premium Email Support Package for me.
  # Interpretation: Type "Phone Support" <- "has the phone support type entitlement"
  # Interpretation: Start Date "7 days from today" <- "starts in one week from today"
  # Interpretation: End Date "18 months from today" <- "expires in 18 months"

  Scenario: Support agent creates the Premium Email Support Package entitlement for Innovate Ltd
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Entitlements" item in the App Launcher
    And I wait until the Entitlements list view is ready
    And I click the "New" button on the Entitlements list
    And I wait until the "New Entitlement" modal is ready
    And I fill "Premium Email Support Package" in the "Entitlement Name" text field
    And I search for "Innovate Ltd" in the "Account Name" lookup
    And I select the exact matching account "Innovate Ltd"
    And I wait until the "Account Name" lookup shows "Innovate Ltd"
    And I select "Phone Support" from the "Type" picklist
    And I fill "7 days from today" in the "Start Date" date field in the "New Entitlement" modal
    And I fill "18 months from today" in the "End Date" date field in the "New Entitlement" modal
    And I click the "Save" button in the "New Entitlement" modal
    And I wait until the Entitlement record page opens
    Then the Entitlement record page should show "Premium Email Support Package" with Account Name "Innovate Ltd", Type "Phone Support", Start Date 7 days from today and End Date 18 months from today
