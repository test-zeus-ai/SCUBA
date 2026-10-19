Feature: SCUBA benchmark case sales_013_004 - Qualify a lead from the latest call transcript

  # Original request: Run a BANT-style check on Liam Chen using the latest VoiceCallTranscript record. If some criterion prevents qualification, output only that criterion ('Budget', 'Authority', 'Need', or 'Timeline'). If none do, output "Qualified".

  Scenario: Sales user decides from the call transcript whether Liam Chen is qualified
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "VoiceCallTranscripts" item in the App Launcher
    And I wait until the "VoiceCallTranscripts" list view is ready
    And I click the "Call log with Lead: Liam Chen" link in the VoiceCallTranscripts list
    And I wait until the VoiceCallTranscript record page for "Call log with Lead: Liam Chen" opens
    And I read the whole transcript on the record page, including what Liam Chen says about budget, decision authority, need and timeline
    Then I answer with exactly one word: "Qualified" if the transcript qualifies Liam Chen as a lead, otherwise the single blocking criterion "Budget", "Authority", "Need" or "Timeline"
