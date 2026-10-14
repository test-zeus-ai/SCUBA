Feature: SCUBA benchmark case sales_005_003 - Log an activity and update the opportunity stage

  # Original request: I just spoke with the product team to Review final requirements—log that call under the Product Development opportunity and move the stage to Negotiation/Review.
  # Interpretation: Call Subject "Review final requirements" <- "to Review final requirements—log that call"

  Scenario: Sales user logs the activity on Product Development and moves it to Negotiation/Review
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I search for "Opportunities" in the "Search apps and items..." search field
    And I click the "Opportunities" link in the App Launcher
    And I wait until the "Recently Viewed" list view for Opportunities is ready
    And I search for "Product Development" in the "Search this list..." search field
    And I click the "Product Development" link in the Opportunities list
    And I wait until the Opportunity record page for "Product Development" opens
    And I open the "Activity" tab on the Opportunity record page
    And I click the "Log a Call" button in the "Activity" tab
    And I wait until the "Log a Call" panel is ready
    And I fill "Review final requirements" in the "Subject" field in the "Log a Call" panel
    And I fill "Spoke with the product team to review final requirements." in the "Comments" textarea in the "Log a Call" panel
    And I click the "Save" button in the "Log a Call" panel
    And I wait until the "Log a Call" panel closes
    And I open the "Details" tab on the Opportunity record page
    And I click the "Edit Stage" button in the "Details" tab
    And I select "Negotiation/Review" from the "Stage" picklist
    And I click the "Save" button in the "Details" tab
    And I wait until the "Stage" field in the "Details" tab is no longer editable
    Then the "Stage" field in the "Details" tab should show "Negotiation/Review"
    And the "Activity" tab should list the call "Review final requirements"
