Feature: SCUBA benchmark case sales_013_005 - Qualify a lead from the latest call transcript

  # Original request: After reviewing the latest VoiceCallTranscript record, decide whether Fatima Al-Mansouri should be qualified. If she isn’t, name just one culprit—'Budget', 'Authority', 'Need', or 'Timeline'—and return only that word. If she is, return "Qualified".

  Scenario: Sales user decides from the call transcript whether Fatima Al-Mansouri is qualified
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "VoiceCallTranscripts" item in the App Launcher
    And I wait until the "VoiceCallTranscripts" list view is ready
    And I click the "Call log with Lead: Fatima Al-Mansouri" link in the VoiceCallTranscripts list
    And I wait until the VoiceCallTranscript record page for "Call log with Lead: Fatima Al-Mansouri" opens
    And I read the whole transcript on the record page, including what Fatima Al-Mansouri says about budget, decision authority, need and timeline
    Then I answer with exactly one word: "Qualified" if the transcript qualifies Fatima Al-Mansouri as a lead, otherwise the single blocking criterion "Budget", "Authority", "Need" or "Timeline"
