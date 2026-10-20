Feature: SCUBA benchmark case service_003_005 - Create a case for Emily Johnson

  # Original request: Open a case for Emily Johnson regarding a system performance issue. Keep the status at 'Working', set the origin to a web form submission, priority to Low, type to 'Structural', case reasoning to 'Feedback', and the subject to 'System Performance Degradation - Memory Upgrade Needed'.
  # Interpretation: Case Origin "Web" <- "set the origin to a web form submission"

  Scenario: Support agent creates the "System Performance Degradation - Memory Upgrade Needed" case for Emily Johnson
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Cases" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Cases is ready
    And I click the "New" button on the Cases list
    And I wait until the "New Case" modal is ready
    And I search for "Emily Johnson" in the "Contact Name" lookup
    And I select the exact matching contact "Emily Johnson"
    And I wait until the "Contact Name" lookup shows "Emily Johnson"
    And I select "Working" from the "Status" picklist
    And I select "Web" from the "Case Origin" picklist
    And I select "Low" from the "Priority" picklist
    And I select "Structural" from the "Type" picklist
    And I select "Feedback" from the "Case Reason" picklist
    And I fill "System Performance Degradation - Memory Upgrade Needed" in the "Subject" text field
    And I click the "Save" button in the "New Case" modal
    And I wait until the Case record page opens
    Then the Case record page should show Subject "System Performance Degradation - Memory Upgrade Needed" with Contact Name "Emily Johnson"
    And the "Details" tab should show Status "Working", Case Origin "Web", Priority "Low", Type "Structural" and Case Reason "Feedback"
