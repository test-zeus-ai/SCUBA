Feature: SCUBA benchmark case sales_003_003
  Original request: New lead (source: Other) — Kevin Tran at HealthSync Solutions. Initial outreach done; attitude came across as cold. Industry should be Healthcare.
  # Interpretation: Lead Status "Working - Contacted" <- "Initial outreach done"

  Scenario: Create the lead Kevin Tran from HealthSync Solutions
    Given the Salesforce Lightning app is open and I am signed in to the benchmark organization
    When I click the App Launcher, search for "Leads" and open the Leads tab
    And I click the "New" button
    And I enter "Kevin" in the "First Name" field
    And I enter "Tran" in the "Last Name" field
    And I enter "HealthSync Solutions" in the "Company" field
    And I select "Working - Contacted" in the "Lead Status" field
    And I select "Other" in the "Lead Source" field
    And I select "Cold" in the "Rating" field
    And I select "Healthcare" in the "Industry" field
    And I click "Save"
    Then the lead record page shows the name "Kevin Tran" and the company "HealthSync Solutions"
    And the lead details show Lead Source "Other", Rating "Cold", Industry "Healthcare" and Lead Status "Working - Contacted"
    And Test Ended
