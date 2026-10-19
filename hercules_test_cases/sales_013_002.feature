Feature: SCUBA benchmark case sales_013_002 - Qualify a lead from the latest call transcript

  # Original request: Looking at our latest VoiceCallTranscript record, would you green-light Raj Patel? If the answer is no, what single issue is blocking it—'Budget', 'Authority', 'Need', or 'Timeline'? Respond with just that one word. If you would green-light, respond with "Qualified".

  Scenario: Sales user decides from the latest call transcript whether Raj Patel is qualified
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
    And I read the whole transcript on the record page, including what Raj Patel says about budget, decision authority, need and timeline
    Then I answer with exactly one word: "Qualified" if the transcript qualifies Raj Patel as a lead, otherwise the single blocking criterion "Budget", "Authority", "Need" or "Timeline"
