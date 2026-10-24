Feature: SCUBA benchmark case service_004_005 - Update the "Account Billing Discrepancy" case

  # Original request: I’m out of my depth on the case 'Account Billing Discrepancy.' Please move it to escalated, flag SLA Violation as Yes, and raise the Priority to High.
  # Interpretation: Status "Escalated" <- "move it to escalated"

  Scenario: Support agent updates the "Account Billing Discrepancy" case
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Cases" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Cases is ready
    And I search for "Account Billing Discrepancy" in the "Search this list..." search field and press Enter
    And If the Cases list shows no case with Subject "Account Billing Discrepancy", I select "All Open Cases" from the "Select a List View: Cases" list view menu and search for "Account Billing Discrepancy" again
    And I click the case link whose Subject is "Account Billing Discrepancy" in the Cases list
    And I wait until the Case record page for "Account Billing Discrepancy" opens
    And I click the "Edit" button on the Case record page
    And I wait until the case edit form is ready
    And I select "Escalated" from the "Status" picklist in the case edit form
    And I select "Yes" from the "SLA Violation" picklist in the case edit form
    And I select "High" from the "Priority" picklist in the case edit form
    And I click the "Save" button in the case edit form
    And I wait until the Case record page for "Account Billing Discrepancy" shows the saved values
    Then the Case record page should show Status "Escalated", SLA Violation "Yes", Priority "High"
