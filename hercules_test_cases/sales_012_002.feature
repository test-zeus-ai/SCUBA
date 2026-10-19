Feature: SCUBA benchmark case sales_012_002 - Create a campaign and invite leads

  # Original request: Set up a campaign with these details: - Name: Autumn Trail Running Launch - Type: Direct Mail - Start date: four weeks from today - Budget: 10,000 - Expected revenue: 3 times the budget Then invite Amanda Klein to the campaign.
  # Interpretation: Start Date "28 days from today" <- "four weeks from today"
  # Interpretation: Expected Revenue in Campaign "30000" <- "3 times the budget"

  Scenario: Marketing user creates the Autumn Trail Running Launch campaign and adds its leads
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Campaigns" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Campaigns is ready
    And I click the "New" button on the Campaigns list
    And I wait until the "New Campaign" modal is ready
    And I fill "Autumn Trail Running Launch" in the "Campaign Name" text field in the "New Campaign" modal
    And I select "Direct Mail" from the "Type" picklist in the "New Campaign" modal
    And I fill "28 days from today" in the "Start Date" date field in the "New Campaign" modal
    And I fill "10000" in the "Budgeted Cost in Campaign" field in the "New Campaign" modal
    And I fill "30000" in the "Expected Revenue in Campaign" field in the "New Campaign" modal
    And I click the "Save" button in the "New Campaign" modal
    And I wait until the Campaign record page for "Autumn Trail Running Launch" opens
    And I open the "Related" tab on the Campaign record page
    And I click the "Add Leads" button in the "Campaign Members" related list
    And I wait until the "Add Leads to Campaign" dialog is ready
    And I search for "Amanda Klein" in the "Search Leads" search field in the "Add Leads to Campaign" dialog
    And I check the "Select item Amanda Klein" checkbox in the "Add Leads to Campaign" dialog
    And I click the "Next" button in the "Add Leads to Campaign" dialog
    And I click the "Submit" button in the "Add Leads to Campaign" dialog
    And I wait until the "Add Leads to Campaign" dialog closes
    Then the "Campaign Members" related list should list "Amanda Klein"
    And the "Details" tab should show Type "Direct Mail", Budgeted Cost in Campaign "10000" and Expected Revenue in Campaign "30000"
