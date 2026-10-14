Feature: SCUBA benchmark case sales_003_005
  Original request: Received a cold email inquiry from Marcus Thompson at FutureTech Dynamics. He expressed strong interest in our solutions for their digital transformation project and requested a follow-up call next week.
  # Interpretation: Lead Source "Other" <- "cold email inquiry"
  # Interpretation: Rating "Hot" <- "expressed strong interest"
  # Interpretation: Lead Status "Open - Not Contacted" <- "requested a follow-up call next week"

  Scenario: Create the lead Marcus Thompson from FutureTech Dynamics
    Given the Salesforce Lightning app is open and I am signed in to the benchmark organization
    When I click the App Launcher, search for "Leads" and open the Leads tab
    And I click the "New" button
    And I enter "Marcus" in the "First Name" field
    And I enter "Thompson" in the "Last Name" field
    And I enter "FutureTech Dynamics" in the "Company" field
    And I select "Open - Not Contacted" in the "Lead Status" field
    And I select "Other" in the "Lead Source" field
    And I select "Hot" in the "Rating" field
    And I enter "Cold email inquiry; strong interest in our solutions for their digital transformation project; requested a follow-up call next week" in the "Description" field
    And I click "Save"
    Then the lead record page shows the name "Marcus Thompson" and the company "FutureTech Dynamics"
    And the lead details show Lead Source "Other", Rating "Hot" and Lead Status "Open - Not Contacted"
    And Test Ended
