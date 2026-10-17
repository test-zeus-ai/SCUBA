Feature: SCUBA benchmark case sales_003_002 - Create a lead

  # Original request: Partner referral just came in: Maya Patel from GenePoint. I connected with her already—rate her attitude as hot and tag the industry as Biotechnology.
  # Interpretation: Lead Status "Working - Contacted" <- "I connected with her already"

  Scenario: Sales user creates the lead Maya Patel from GenePoint
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Leads" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Leads is ready
    And I click the "New" button on the Leads list
    And I wait until the "New Lead" modal is ready
    And I fill "Maya" in the "First Name" text field
    And I fill "Patel" in the "Last Name" text field
    And I fill "GenePoint" in the "Company" text field
    And I select "Working - Contacted" from the "Lead Status" picklist
    And I select "Partner Referral" from the "Lead Source" picklist
    And I select "Hot" from the "Rating" picklist
    And I select "Biotechnology" from the "Industry" picklist
    And I click the "Save" button in the "New Lead" modal
    And I wait until the Lead record page opens
    Then the Lead record page should show "Maya Patel" with Company "GenePoint"
    And the "Details" tab should show Lead Status "Working - Contacted", Lead Source "Partner Referral" and Rating "Hot"
    And the "Details" tab should show Industry "Biotechnology"
