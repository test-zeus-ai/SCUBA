Feature: SCUBA benchmark case sales_005_003
  Original request: I just spoke with the product team to Review final requirements—log that call under the Product Development opportunity and move the stage to Negotiation/Review.
  # Interpretation: Call Subject "Review final requirements" <- "to Review final requirements—log that call"

  Scenario: Log the Review final requirements call on Product Development and move it to Negotiation/Review
    Given the Salesforce Lightning app is open and I am signed in to the benchmark organization
    When I click the App Launcher, search for "Opportunities" and open the Opportunities tab
    And I search the list for "Product Development" and open the opportunity "Product Development"
    And in the Activity panel I click "Log a Call"
    And I enter "Review final requirements" in the "Subject" field
    And I enter "Spoke with the product team to review final requirements." in the "Comments" field
    And I click "Save" in the call composer
    And I click the pencil icon on the "Stage" field of the opportunity details
    And I select "Negotiation/Review" in the "Stage" field
    And I click "Save"
    Then the opportunity "Product Development" shows Stage "Negotiation/Review"
    And the Activity timeline lists the call "Review final requirements"
    And Test Ended
