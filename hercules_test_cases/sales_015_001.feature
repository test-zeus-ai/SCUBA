Feature: SCUBA benchmark case sales_015_001 - Report the warranty length on the product Carlos offers Hiro

  # Original request: Quick favor—scan the VoiceCallTranscript record between Carlos Nunez and Hiro Tanaka and tell me how many years the warranty lasts on the product Carlos offers Hiro. Reply with the number only.

  Scenario: Sales user reads the call transcript between Carlos Nunez and Hiro Tanaka
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "VoiceCallTranscripts" item in the App Launcher
    And I wait until the "VoiceCallTranscripts" list view is ready
    And I click the "Select a List View: VoiceCallTranscripts" button
    And I click the "All" option in the list view menu
    And I wait until the "All" list view for VoiceCallTranscripts is ready
    And I search for "Carlos Nunez" in the "Search this list..." search field and press Enter
    And I click the VoiceCallTranscript link whose name includes both "Carlos Nunez" and "Hiro Tanaka"
    And I wait until the VoiceCallTranscript record page for the call between "Carlos Nunez" and "Hiro Tanaka" opens
    And I read the whole transcript on the record page, including the warranty Carlos Nunez describes for the product he offers Hiro Tanaka
    Then I answer with only the number of years the warranty lasts
