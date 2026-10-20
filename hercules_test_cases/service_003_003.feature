Feature: SCUBA benchmark case service_003_003 - Create a case for Alice Bob

  # Original request: For Alice Bob, set up a case for her account access issue. Put the case in 'Working' status, note that it originated from an email, set the priority to High, choose type 'Other', set case reasoning to 'Equipment Design', and use the subject 'Account Access Denied - Password Reset Required'.
  # Interpretation: Case Origin "Email" <- "originated from an email"

  Scenario: Support agent creates the "Account Access Denied - Password Reset Required" case for Alice Bob
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Cases" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Cases is ready
    And I click the "New" button on the Cases list
    And I wait until the "New Case" modal is ready
    And I search for "Alice Bob" in the "Contact Name" lookup
    And I select the exact matching contact "Alice Bob"
    And I wait until the "Contact Name" lookup shows "Alice Bob"
    And I select "Working" from the "Status" picklist
    And I select "Email" from the "Case Origin" picklist
    And I select "High" from the "Priority" picklist
    And I select "Other" from the "Type" picklist
    And I select "Equipment Design" from the "Case Reason" picklist
    And I fill "Account Access Denied - Password Reset Required" in the "Subject" text field
    And I click the "Save" button in the "New Case" modal
    And I wait until the Case record page opens
    Then the Case record page should show Subject "Account Access Denied - Password Reset Required" with Contact Name "Alice Bob"
    And the "Details" tab should show Status "Working", Case Origin "Email", Priority "High", Type "Other" and Case Reason "Equipment Design"
