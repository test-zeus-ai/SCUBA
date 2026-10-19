Feature: SCUBA benchmark case sales_013_003 - Qualify a lead from the latest call transcript

  # Original request: For Wei Chen, check the newest VoiceCallTranscript record and give a single-word outcome. If they qualify, return "Qualified"; if not, return only the blocking factor: 'Budget', 'Authority', 'Need', or 'Timeline'.

  Scenario: Sales user decides from the latest call transcript whether Wei Chen is qualified
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
    And I read the whole transcript on the record page, including what Wei Chen says about budget, decision authority, need and timeline
    Then I answer with exactly one word: "Qualified" if the transcript qualifies Wei Chen as a lead, otherwise the single blocking criterion "Budget", "Authority", "Need" or "Timeline"
