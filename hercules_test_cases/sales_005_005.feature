Feature: SCUBA benchmark case sales_005_005 - Log an activity and update the opportunity stage

  # Original request: Create a new task on the Security Solutions opportunity with the subject line "remind me search for the company's revenue," and update the stage to Needs Analysis.

  Scenario: Sales user logs the activity on Security Solutions and moves it to Needs Analysis
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I search and select "Opportunities" in the "Search apps and items..." combobox in the App Launcher
    And I wait until the "Recently Viewed" list view for Opportunities is ready
    And I search for "Security Solutions" in the "Search this list..." search field
    And I click the "Security Solutions" link in the Opportunities list
    And I wait until the Opportunity record page for "Security Solutions" opens
    And I open the "Activity" tab on the Opportunity record page
    And I click the "New Task" button in the "Activity" tab
    And I wait until the "New Task" panel is ready
    And I fill "remind me search for the company's revenue" in the "Subject" field in the "New Task" panel
    And I click the "Save" button in the "New Task" panel
    And I wait until the "New Task" panel closes
    And I open the "Details" tab on the Opportunity record page
    And I click the "Edit Stage" button in the "Details" tab
    And I select "Needs Analysis" from the "Stage" picklist
    And I click the "Save" button in the "Details" tab
    And I wait until the "Stage" field in the "Details" tab is no longer editable
    Then the "Stage" field in the "Details" tab should show "Needs Analysis"
    And the "Activity" tab should list the task "remind me search for the company's revenue"
