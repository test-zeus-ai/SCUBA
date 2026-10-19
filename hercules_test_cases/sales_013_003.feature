Feature: SCUBA benchmark case sales_013_003 - Qualify a lead from the latest call transcript

  # Original request: For Wei Chen, check the newest VoiceCallTranscript record and give a single-word outcome. If they qualify, return "Qualified"; if not, return only the blocking factor: 'Budget', 'Authority', 'Need', or 'Timeline'.

  Scenario: Sales user decides from the call transcript whether Wei Chen is qualified
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "VoiceCallTranscripts" item in the App Launcher
    And I wait until the "VoiceCallTranscripts" list view is ready
    And I click the "Call log with Lead: Wei Chen" link in the VoiceCallTranscripts list
    And I wait until the VoiceCallTranscript record page for "Call log with Lead: Wei Chen" opens
    And I read the whole transcript on the record page, including what Wei Chen says about budget, decision authority, need and timeline
    Then I answer with exactly one word: "Qualified" if the transcript qualifies Wei Chen as a lead, otherwise the single blocking criterion "Budget", "Authority", "Need" or "Timeline"
