Feature: SCUBA benchmark case sales_003_002
  Original request: Partner referral just came in: Maya Patel from GenePoint. I connected with her already—rate her attitude as hot and tag the industry as Biotechnology.
  # Interpretation: Lead Status "Working - Contacted" <- "I connected with her already"

  Scenario: Create the lead Maya Patel from GenePoint
    Given the Salesforce Lightning app is open and I am signed in to the benchmark organization
    When I click the App Launcher, search for "Leads" and open the Leads tab
    And I click the "New" button
    And I enter "Maya" in the "First Name" field
    And I enter "Patel" in the "Last Name" field
    And I enter "GenePoint" in the "Company" field
    And I select "Working - Contacted" in the "Lead Status" field
    And I select "Partner Referral" in the "Lead Source" field
    And I select "Hot" in the "Rating" field
    And I select "Biotechnology" in the "Industry" field
    And I click "Save"
    Then the lead record page shows the name "Maya Patel" and the company "GenePoint"
    And the lead details show Lead Source "Partner Referral", Rating "Hot", Industry "Biotechnology" and Lead Status "Working - Contacted"
    And Test Ended
