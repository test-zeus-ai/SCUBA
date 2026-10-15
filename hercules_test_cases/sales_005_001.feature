Feature: SCUBA benchmark case sales_005_001 - Log an activity and update the opportunity stage

  # Original request: For the opportunity Cloud Software Deal, Schedule an event for meeting with the client to discuss implementation timeline. Update the opportunity stage to Value Proposition.
  # Interpretation: Event Subject "Meeting with the client to discuss implementation timeline" <- "Schedule an event for meeting with the client to discuss implementation timeline"

  Scenario: Sales user logs the activity on Cloud Software Deal and moves it to Value Proposition
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Opportunities" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Opportunities is ready
    And I search for "Cloud Software Deal" in the "Search this list..." search field and press Enter
    And I click the "Cloud Software Deal" link in the Opportunities list
    And I wait until the Opportunity record page for "Cloud Software Deal" opens
    And I open the "Activity" tab on the Opportunity record page
    And I click the "New Event" button in the "Activity" tab
    And I wait until the "New Event" panel is ready
    And I fill "Meeting with the client to discuss implementation timeline" in the "Subject" field in the "New Event" panel
    And I click the "Save" button in the "New Event" panel
    And I wait until the "New Event" panel closes
    And I open the "Details" tab on the Opportunity record page
    And I click the "Edit Stage" button in the "Details" tab
    And I select "Value Proposition" from the "Stage" picklist in the "Details" tab
    And I click the "Save" button in the "Details" tab
    And I wait until the "Stage" field in the "Details" tab is no longer editable
    Then the "Stage" field in the "Details" tab should show "Value Proposition"
    And the "Activity" tab should list the event "Meeting with the client to discuss implementation timeline"
