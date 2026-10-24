Feature: SCUBA benchmark case sales_012_001 - Create a campaign and invite leads

  # Original request: Please create a new campaign called "Introduce the new shoes collections" as a Webinar. Schedule it to start two weeks from today. Set the budget at 10,000 and aim for expected revenue equal to 10x the budget. Invite Ali Alaba and Leo Messi.
  # Interpretation: Start Date "14 days from today" <- "two weeks from today"
  # Interpretation: Expected Revenue in Campaign "100000" <- "10 times the budget"

  Scenario: Marketing user creates the Introduce the new shoes collections campaign and adds its leads
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Campaigns" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Campaigns is ready
    And I click the "New" button on the Campaigns list
    And I wait until the "New Campaign" modal is ready
    And I fill "Introduce the new shoes collections" in the "Campaign Name" text field in the "New Campaign" modal
    And I select "Webinar" from the "Type" picklist in the "New Campaign" modal
    And I fill "14 days from today" in the "Start Date" date field in the "New Campaign" modal
    And I fill "10000" in the "Budgeted Cost in Campaign" field in the "New Campaign" modal
    And I fill "100000" in the "Expected Revenue in Campaign" field in the "New Campaign" modal
    And I click the "Save" button in the "New Campaign" modal
    And I wait until the Campaign record page for "Introduce the new shoes collections" opens
    And I open the "Related" tab on the Campaign record page
    And I click the "Add Leads" button in the "Campaign Members" related list
    And I wait until the "Add Leads to Campaign" dialog is ready
    And I check the "Select item Ali Alaba" checkbox in the "Add Leads to Campaign" dialog
    And I check the "Select item Leo Messi" checkbox in the "Add Leads to Campaign" dialog
    And I click the "Next" button in the "Add Leads to Campaign" dialog
    And I click the "Submit" button in the "Add Leads to Campaign" dialog
    And I wait until the "Add Leads to Campaign" dialog closes
    Then the "Campaign Members" related list should list "Ali Alaba", "Leo Messi"
    And the "Details" tab should show Type "Webinar", Budgeted Cost in Campaign "10000" and Expected Revenue in Campaign "100000"
