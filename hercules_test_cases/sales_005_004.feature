Feature: SCUBA benchmark case sales_005_004 - Log an activity and update the opportunity stage

  # Original request: First, under the Consulting Service opportunity, record this exact call summary: "He wants to know the price for the product A & B." Next, change the stage to Proposal/Price Quote.
  # Interpretation: Call Subject "Call" <- "record this exact call summary" (the summary goes to Comments verbatim)

  Scenario: Sales user logs the activity on Consulting Service and moves it to Proposal/Price Quote
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Opportunities" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Opportunities is ready
    And I search for "Consulting Service" in the "Search this list..." search field and press Enter
    And I click the "Consulting Service" link in the Opportunities list
    And I wait until the Opportunity record page for "Consulting Service" opens
    And I open the "Activity" tab on the Opportunity record page
    And I click the "Log a Call" button in the "Activity" tab
    And I wait until the "Log a Call" panel is ready
    And I fill "Call" in the "Subject" field in the "Log a Call" panel
    And I fill "He wants to know the price for the product A & B." in the "Comments" textarea in the "Log a Call" panel
    And I click the "Save" button in the "Log a Call" panel
    And I wait until the "Log a Call" panel closes
    And I open the "Details" tab on the Opportunity record page
    And I click the "Edit Stage" button in the "Details" tab
    And I select "Proposal/Price Quote" from the "Stage" picklist
    And I click the "Save" button in the "Details" tab
    And I wait until the "Stage" field in the "Details" tab is no longer editable
    Then the "Stage" field in the "Details" tab should show "Proposal/Price Quote"
    And the "Activity" tab should list a call whose comments read "He wants to know the price for the product A & B."
