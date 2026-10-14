Feature: SCUBA benchmark case sales_003_004
  Original request: Met an interesting prospect at the trade show yesterday - David Rodriguez from Pinnacle Systems. He mentioned they're evaluating new vendors for their upcoming expansion and seemed very engaged during our conversation.
  # Interpretation: Lead Source "Other" <- "at the trade show" (no Trade Show source value is assumed)
  # Interpretation: Rating "Hot" <- "seemed very engaged"
  # Interpretation: Lead Status "Working - Contacted" <- "during our conversation"

  Scenario: Create the lead David Rodriguez from Pinnacle Systems
    Given the Salesforce Lightning app is open and I am signed in to the benchmark organization
    When I click the App Launcher, search for "Leads" and open the Leads tab
    And I click the "New" button
    And I enter "David" in the "First Name" field
    And I enter "Rodriguez" in the "Last Name" field
    And I enter "Pinnacle Systems" in the "Company" field
    And I select "Working - Contacted" in the "Lead Status" field
    And I select "Other" in the "Lead Source" field
    And I select "Hot" in the "Rating" field
    And I enter "Met at the trade show; evaluating new vendors for their upcoming expansion" in the "Description" field
    And I click "Save"
    Then the lead record page shows the name "David Rodriguez" and the company "Pinnacle Systems"
    And the lead details show Lead Source "Other", Rating "Hot" and Lead Status "Working - Contacted"
    And Test Ended
