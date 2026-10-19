Feature: SCUBA benchmark case sales_012_003 - Create a campaign and invite leads

  # Original request: Could you launch an Email campaign titled "Summer Yoga Webinar Series" starting one week from today? Budget it at 9,000, and set expected revenue to four times the budget plus 1,500. Please invite Priya Sharma, Lucas Chen, and Jordan Hayes.
  # Interpretation: Start Date "7 days from today" <- "one week from today"
  # Interpretation: Expected Revenue in Campaign "37500" <- "four times the budget plus 1,500"

  Scenario: Marketing user creates the Summer Yoga Webinar Series campaign and adds its leads
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Campaigns" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Campaigns is ready
    And I click the "New" button on the Campaigns list
    And I wait until the "New Campaign" modal is ready
    And I fill "Summer Yoga Webinar Series" in the "Campaign Name" text field in the "New Campaign" modal
    And I select "Email" from the "Type" picklist in the "New Campaign" modal
    And I fill "7 days from today" in the "Start Date" date field in the "New Campaign" modal
    And I fill "9000" in the "Budgeted Cost in Campaign" field in the "New Campaign" modal
    And I fill "37500" in the "Expected Revenue in Campaign" field in the "New Campaign" modal
    And I click the "Save" button in the "New Campaign" modal
    And I wait until the Campaign record page for "Summer Yoga Webinar Series" opens
    And I open the "Related" tab on the Campaign record page
    And I click the "Add Leads" button in the "Campaign Members" related list
    And I wait until the "Add Leads to Campaign" dialog is ready
    And I search for "Priya Sharma" in the "Search Leads" search field in the "Add Leads to Campaign" dialog
    And I check the "Select item Priya Sharma" checkbox in the "Add Leads to Campaign" dialog
    And I search for "Lucas Chen" in the "Search Leads" search field in the "Add Leads to Campaign" dialog
    And I check the "Select item Lucas Chen" checkbox in the "Add Leads to Campaign" dialog
    And I search for "Jordan Hayes" in the "Search Leads" search field in the "Add Leads to Campaign" dialog
    And I check the "Select item Jordan Hayes" checkbox in the "Add Leads to Campaign" dialog
    And I click the "Next" button in the "Add Leads to Campaign" dialog
    And I click the "Submit" button in the "Add Leads to Campaign" dialog
    And I wait until the "Add Leads to Campaign" dialog closes
    Then the "Campaign Members" related list should list "Priya Sharma", "Lucas Chen", "Jordan Hayes"
    And the "Details" tab should show Type "Email", Budgeted Cost in Campaign "9000" and Expected Revenue in Campaign "37500"
