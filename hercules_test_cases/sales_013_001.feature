Feature: SCUBA benchmark case sales_013_001 - Qualify a lead from the latest call transcript

  # Original request: From the most recent VoiceCallTranscript record, can we qualify Ali Hussein as a lead? If not, reply with only one word—'Budget', 'Authority', 'Need', or 'Timeline'—to indicate the blocker. If yes, reply with "Qualified".

  Scenario: Sales user decides from the latest call transcript whether Ali Hussein is qualified
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I search for "Voice Call Transcripts" in the "Search apps and items..." search field in the App Launcher
    And I click the "Voice Call Transcripts" item in the App Launcher
    And I wait until the Voice Call Transcripts list view is ready
    And I click the "Select a List View: Voice Call Transcripts" button
    And I click the "All" option in the list view menu
    And I wait until the "All" list view is ready
    And I sort the list by the "Created Date" column so the newest record is first
    And I click the first record link in the list
    And I wait until the Voice Call Transcript record page opens
    And I read the whole transcript on the record page, including what Ali Hussein says about budget, decision authority, need and timeline
    Then I answer with exactly one word: "Qualified" if the transcript qualifies Ali Hussein as a lead, otherwise the single blocking criterion "Budget", "Authority", "Need" or "Timeline"
