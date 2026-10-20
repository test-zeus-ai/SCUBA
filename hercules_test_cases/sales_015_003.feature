Feature: SCUBA benchmark case sales_015_003 - Report the installation deadline Rajesh asks for

  # Original request: From the VoiceCallTranscript record between Emmanuel Okonkwo and Rajesh Kumar, within how many days does Rajesh want the installation completed? Answer with the number only.

  Scenario: Sales user reads the call transcript between Emmanuel Okonkwo and Rajesh Kumar
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "VoiceCallTranscripts" item in the App Launcher
    And I wait until the "VoiceCallTranscripts" list view is ready
    And I click the "Select a List View: VoiceCallTranscripts" button
    And I click the "All" option in the list view menu
    And I wait until the "All" list view for VoiceCallTranscripts is ready
    And I search for "Emmanuel Okonkwo" in the "Search this list..." search field and press Enter
    And I click the VoiceCallTranscript link whose name includes both "Emmanuel Okonkwo" and "Rajesh Kumar"
    And I wait until the VoiceCallTranscript record page for the call between "Emmanuel Okonkwo" and "Rajesh Kumar" opens
    And I read the whole transcript on the record page, including the number of days within which Rajesh Kumar wants the installation completed
    Then I answer with only the number of days
