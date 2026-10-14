Feature: SCUBA benchmark case sales_003_005 - Create a lead

  # Original request: Received a cold email inquiry from Marcus Thompson at FutureTech Dynamics. He expressed strong interest in our solutions for their digital transformation project and requested a follow-up call next week.
  # Interpretation: Lead Source "Other" <- "cold email inquiry"
  # Interpretation: Rating "Hot" <- "expressed strong interest"
  # Interpretation: Lead Status "Open - Not Contacted" <- "requested a follow-up call next week"

  Scenario: Sales user creates the lead Marcus Thompson from FutureTech Dynamics
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I search and select "Leads" in the "Search apps and items..." combobox in the App Launcher
    And I wait until the "Recently Viewed" list view for Leads is ready
    And I click the "New" button on the Leads list
    And I wait until the "New Lead" modal is ready
    And I fill "Marcus" in the "First Name" text field
    And I fill "Thompson" in the "Last Name" text field
    And I fill "FutureTech Dynamics" in the "Company" text field
    And I select "Open - Not Contacted" from the "Lead Status" picklist
    And I select "Other" from the "Lead Source" picklist
    And I select "Hot" from the "Rating" picklist
    And I fill "Cold email inquiry; strong interest in our solutions for their digital transformation project; requested a follow-up call next week" in the "Description" textarea
    And I click the "Save" button in the "New Lead" modal
    And I wait until the Lead record page opens
    Then the Lead record page should show "Marcus Thompson" with Company "FutureTech Dynamics"
    And the "Details" tab should show Lead Status "Open - Not Contacted", Lead Source "Other" and Rating "Hot"
