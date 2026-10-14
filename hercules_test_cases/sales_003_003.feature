Feature: SCUBA benchmark case sales_003_003 - Create a lead

  # Original request: New lead (source: Other) — Kevin Tran at HealthSync Solutions. Initial outreach done; attitude came across as cold. Industry should be Healthcare.
  # Interpretation: Lead Status "Working - Contacted" <- "Initial outreach done"

  Scenario: Sales user creates the lead Kevin Tran from HealthSync Solutions
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I search for "Leads" in the "Search apps and items..." search field
    And I click the "Leads" link in the App Launcher
    And I wait until the "Recently Viewed" list view for Leads is ready
    And I click the "New" button on the Leads list
    And I wait until the "New Lead" modal is ready
    And I fill "Kevin" in the "First Name" text field
    And I fill "Tran" in the "Last Name" text field
    And I fill "HealthSync Solutions" in the "Company" text field
    And I select "Working - Contacted" from the "Lead Status" picklist
    And I select "Other" from the "Lead Source" picklist
    And I select "Cold" from the "Rating" picklist
    And I select "Healthcare" from the "Industry" picklist
    And I click the "Save" button in the "New Lead" modal
    And I wait until the Lead record page opens
    Then the Lead record page should show "Kevin Tran" with Company "HealthSync Solutions"
    And the "Details" tab should show Lead Status "Working - Contacted", Lead Source "Other" and Rating "Cold"
    And the "Details" tab should show Industry "Healthcare"
