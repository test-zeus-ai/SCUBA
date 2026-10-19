Feature: SCUBA benchmark case sales_012_004 - Create a campaign and invite leads

  # Original request: Go ahead and create a campaign named "Spring Sale Campaign" as a Conference. Kickoff should be three weeks from today. Allocate a 5,000 budget and project expected revenue at triple the budget. Invite Charlie Green and Emily White.
  # Interpretation: Start Date "21 days from today" <- "three weeks from today"
  # Interpretation: Expected Revenue in Campaign "15000" <- "triple the budget"

  Scenario: Marketing user creates the Spring Sale Campaign campaign and adds its leads
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Campaigns" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Campaigns is ready
    And I click the "New" button on the Campaigns list
    And I wait until the "New Campaign" modal is ready
    And I fill "Spring Sale Campaign" in the "Campaign Name" text field in the "New Campaign" modal
    And I select "Conference" from the "Type" picklist in the "New Campaign" modal
    And I fill "21 days from today" in the "Start Date" date field in the "New Campaign" modal
    And I fill "5000" in the "Budgeted Cost in Campaign" field in the "New Campaign" modal
    And I fill "15000" in the "Expected Revenue in Campaign" field in the "New Campaign" modal
    And I click the "Save" button in the "New Campaign" modal
    And I wait until the Campaign record page for "Spring Sale Campaign" opens
    And I open the "Related" tab on the Campaign record page
    And I click the "Add Leads" button in the "Campaign Members" related list
    And I wait until the "Add Leads to Campaign" dialog is ready
    And I search for "Charlie Green" in the "Search Leads" search field in the "Add Leads to Campaign" dialog
    And I check the "Select item Charlie Green" checkbox in the "Add Leads to Campaign" dialog
    And I search for "Emily White" in the "Search Leads" search field in the "Add Leads to Campaign" dialog
    And I check the "Select item Emily White" checkbox in the "Add Leads to Campaign" dialog
    And I click the "Next" button in the "Add Leads to Campaign" dialog
    And I click the "Submit" button in the "Add Leads to Campaign" dialog
    And I wait until the "Add Leads to Campaign" dialog closes
    Then the "Campaign Members" related list should list "Charlie Green", "Emily White"
    And the "Details" tab should show Type "Conference", Budgeted Cost in Campaign "5000" and Expected Revenue in Campaign "15000"
