Feature: SCUBA benchmark case sales_005_002 - Log an activity and update the opportunity stage

  # Original request: For Enterprise Software Sale, could you send a quick follow-up email to Confirm the proposal details, and afterward set the opportunity stage to Perception Analysis?
  # Interpretation: Email Subject "Follow-up: Confirm the proposal details" <- "send a quick follow-up email to Confirm the proposal details"
  # Interpretation: Recipient: the opportunity owner, since the request names no recipient
  # Interpretation: the Subject carries the follow-up request; the email body is left empty

  Scenario: Sales user logs the activity on Enterprise Software Sale and moves it to Perception Analysis
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Opportunities" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Opportunities is ready
    And I search for "Enterprise Software Sale" in the "Search this list..." search field and press Enter
    And I click the "Enterprise Software Sale" link in the Opportunities list
    And I wait until the Opportunity record page for "Enterprise Software Sale" opens
    And I save the "Opportunity Owner" name from the current page to <temp_owner>
    And I open the "Activity" tab on the Opportunity record page
    And I click the "Email" button in the "Activity" tab
    And I wait until the "Email" panel is ready
    And I type "<temp_owner>" into the "To" field in the "Email" panel and select that user from the suggestions
    And I fill "Follow-up: Confirm the proposal details" in the "Subject" text field in the "Email" panel
    And I click the "Send" button in the "Email" panel
    And I wait until the "Email" panel closes
    And I open the "Details" tab on the Opportunity record page
    And I click the "Edit Stage" button in the "Details" tab
    And I select "Perception Analysis" from the "Stage" picklist in the "Details" tab
    And I click the "Save" button in the "Details" tab
    And I wait until the "Stage" field in the "Details" tab is no longer editable
    Then the "Stage" field in the "Details" tab should show "Perception Analysis"
    And the "Activity" tab should list the email "Follow-up: Confirm the proposal details"
