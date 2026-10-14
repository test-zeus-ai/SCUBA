Feature: SCUBA benchmark case sales_005_004
  Original request: First, under the Consulting Service opportunity, record this exact call summary: "He wants to know the price for the product A & B." Next, change the stage to Proposal/Price Quote.
  # Interpretation: Call Subject "Call" <- "record this exact call summary" (summary goes to Comments verbatim)

  Scenario: Log the exact call summary on Consulting Service and move it to Proposal/Price Quote
    Given the Salesforce Lightning app is open and I am signed in to the benchmark organization
    When I click the App Launcher, search for "Opportunities" and open the Opportunities tab
    And I search the list for "Consulting Service" and open the opportunity "Consulting Service"
    And in the Activity panel I click "Log a Call"
    And I enter "Call" in the "Subject" field
    And I enter exactly "He wants to know the price for the product A & B." in the "Comments" field
    And I click "Save" in the call composer
    And I click the pencil icon on the "Stage" field of the opportunity details
    And I select "Proposal/Price Quote" in the "Stage" field
    And I click "Save"
    Then the opportunity "Consulting Service" shows Stage "Proposal/Price Quote"
    And the Activity timeline lists a call whose comments read "He wants to know the price for the product A & B."
    And Test Ended
