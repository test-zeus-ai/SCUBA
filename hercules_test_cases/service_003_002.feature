Feature: SCUBA benchmark case service_003_002 - Create a case for Ronny Chen

  # Original request: Please log a case for Ronny Chen about a software licensing issue with the following settings: - Status: 'New' - Origin: web form submission - Priority: Medium - Type: 'Electronic' - Case Reasoning: 'Performance' - Subject: 'Software License Key Activation Required'
  # Interpretation: Case Origin "Web" <- "Origin: web form submission"

  Scenario: Support agent creates the "Software License Key Activation Required" case for Ronny Chen
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Cases" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Cases is ready
    And I click the "New" button on the Cases list
    And I wait until the "New Case" modal is ready
    And I search for "Ronny Chen" in the "Contact Name" lookup
    And I select the exact matching contact "Ronny Chen"
    And I wait until the "Contact Name" lookup shows "Ronny Chen"
    And I select "New" from the "Status" picklist
    And I select "Web" from the "Case Origin" picklist
    And I select "Medium" from the "Priority" picklist
    And I select "Electronic" from the "Type" picklist
    And I select "Performance" from the "Case Reason" picklist
    And I fill "Software License Key Activation Required" in the "Subject" text field
    And I click the "Save" button in the "New Case" modal
    And I wait until the Case record page opens
    Then the Case record page should show Subject "Software License Key Activation Required" with Contact Name "Ronny Chen"
    And the "Details" tab should show Status "New", Case Origin "Web", Priority "Medium", Type "Electronic" and Case Reason "Performance"
