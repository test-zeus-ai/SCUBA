Feature: SCUBA benchmark case service_003_001 - Create a case for David Kim

  # Original request: Hey, can you make a case for David Kim about a hardware malfunction? Set the status to 'Escalated', mark the origin as a phone call, set priority to High, type to 'Mechanical', case reasoning to 'Equipment Design', and use the subject 'Hardware Malfunction - Warranty Replacement'.
  # Interpretation: Case Origin "Phone" <- "mark the origin as a phone call"

  Scenario: Support agent creates the "Hardware Malfunction - Warranty Replacement" case for David Kim
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Cases" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Cases is ready
    And I click the "New" button on the Cases list
    And I wait until the "New Case" modal is ready
    And I search for "David Kim" in the "Contact Name" lookup
    And I select the exact matching contact "David Kim"
    And I wait until the "Contact Name" lookup shows "David Kim"
    And I select "Escalated" from the "Status" picklist
    And I select "Phone" from the "Case Origin" picklist
    And I select "High" from the "Priority" picklist
    And I select "Mechanical" from the "Type" picklist
    And I select "Equipment Design" from the "Case Reason" picklist
    And I fill "Hardware Malfunction - Warranty Replacement" in the "Subject" text field
    And I click the "Save" button in the "New Case" modal
    And I wait until the Case record page opens
    Then the Case record page should show Subject "Hardware Malfunction - Warranty Replacement" with Contact Name "David Kim"
    And the "Details" tab should show Status "Escalated", Case Origin "Phone", Priority "High", Type "Mechanical" and Case Reason "Equipment Design"
