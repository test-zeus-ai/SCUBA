Feature: SCUBA benchmark case sales_003_001
  Original request: Could you log a web-sourced lead for John Doe at sForce company? I just spoke with him; please set his attitude to warm and the industry to Technology.
  # Interpretation: Lead Status "Working - Contacted" <- "I just spoke with him"
  # Interpretation: Lead Source "Web" <- "web-sourced"

  Scenario: Create the lead John Doe from sForce
    Given the Salesforce Lightning app is open and I am signed in to the benchmark organization
    When I click the App Launcher, search for "Leads" and open the Leads tab
    And I click the "New" button
    And I enter "John" in the "First Name" field
    And I enter "Doe" in the "Last Name" field
    And I enter "sForce" in the "Company" field
    And I select "Working - Contacted" in the "Lead Status" field
    And I select "Web" in the "Lead Source" field
    And I select "Warm" in the "Rating" field
    And I select "Technology" in the "Industry" field
    And I click "Save"
    Then the lead record page shows the name "John Doe" and the company "sForce"
    And the lead details show Lead Source "Web", Rating "Warm", Industry "Technology" and Lead Status "Working - Contacted"
    And Test Ended
