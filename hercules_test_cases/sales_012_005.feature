Feature: SCUBA benchmark case sales_012_005 - Create a campaign and invite leads

  # Original request: Let’s go big—set up a Trade Show campaign called "Summer Tech Innovation Showcase" that starts eight weeks from today. Budget is 75,000, and the expected revenue should be three times the investment. Add Grace King and Frank Knight to the invite list.
  # Interpretation: Start Date "56 days from today" <- "eight weeks from today"
  # Interpretation: Expected Revenue in Campaign "225000" <- "three times the investment"

  Scenario: Marketing user creates the Summer Tech Innovation Showcase campaign and adds its leads
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Campaigns" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Campaigns is ready
    And I click the "New" button on the Campaigns list
    And I wait until the "New Campaign" modal is ready
    And I fill "Summer Tech Innovation Showcase" in the "Campaign Name" text field in the "New Campaign" modal
    And I select "Trade Show" from the "Type" picklist in the "New Campaign" modal
    And I fill "56 days from today" in the "Start Date" date field in the "New Campaign" modal
    And I fill "75000" in the "Budgeted Cost in Campaign" field in the "New Campaign" modal
    And I fill "225000" in the "Expected Revenue in Campaign" field in the "New Campaign" modal
    And I click the "Save" button in the "New Campaign" modal
    And I wait until the Campaign record page for "Summer Tech Innovation Showcase" opens
    And I open the "Related" tab on the Campaign record page
    And I click the "Add Leads" button in the "Campaign Members" related list
    And I wait until the "Add Leads to Campaign" dialog is ready
    And I search for "Grace King" in the "Search Leads" search field in the "Add Leads to Campaign" dialog
    And I check the "Select item Grace King" checkbox in the "Add Leads to Campaign" dialog
    And I search for "Frank Knight" in the "Search Leads" search field in the "Add Leads to Campaign" dialog
    And I check the "Select item Frank Knight" checkbox in the "Add Leads to Campaign" dialog
    And I click the "Next" button in the "Add Leads to Campaign" dialog
    And I click the "Submit" button in the "Add Leads to Campaign" dialog
    And I wait until the "Add Leads to Campaign" dialog closes
    Then the "Campaign Members" related list should list "Grace King", "Frank Knight"
    And the "Details" tab should show Type "Trade Show", Budgeted Cost in Campaign "75000" and Expected Revenue in Campaign "225000"
