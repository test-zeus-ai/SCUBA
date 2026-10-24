Feature: SCUBA benchmark case sales_013_001 - Qualify a lead from the latest call transcript

  # Original request: From the most recent VoiceCallTranscript record, can we qualify Ali Hussein as a lead? If not, reply with only one word—'Budget', 'Authority', 'Need', or 'Timeline'—to indicate the blocker. If yes, reply with "Qualified".

  Scenario: Sales user decides from the call transcript whether Ali Hussein is qualified
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "VoiceCallTranscripts" item in the App Launcher
    And I wait until the "VoiceCallTranscripts" list view is ready
    And I click the "Call log with Lead: Ali Hussein" link in the VoiceCallTranscripts list
    And I wait until the VoiceCallTranscript record page for "Call log with Lead: Ali Hussein" opens
    And I read the whole transcript on the record page, including what Ali Hussein says about budget, decision authority, need and timeline
    Then I answer with exactly one word: "Qualified" if the transcript qualifies Ali Hussein as a lead, otherwise the single blocking criterion "Budget", "Authority", "Need" or "Timeline"
