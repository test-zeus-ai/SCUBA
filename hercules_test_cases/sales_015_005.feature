Feature: SCUBA benchmark case sales_015_005 - Report the product Monique proposes for virtual-environment testing

  # Original request: Looking at the VoiceCallTranscript record between Monique Dubois and Olga Sokolova, which product does Monique propose to address testing and optimization of configurations in a virtual environment? Provide the precise product name only.

  Scenario: Sales user reads the call transcript between Monique Dubois and Olga Sokolova
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "VoiceCallTranscripts" item in the App Launcher
    And I wait until the "VoiceCallTranscripts" list view is ready
    And I click the "Select a List View: VoiceCallTranscripts" button
    And I click the "All" option in the list view menu
    And I wait until the "All" list view for VoiceCallTranscripts is ready
    And I search for "Monique Dubois" in the "Search this list..." search field and press Enter
    And I click the VoiceCallTranscript link whose name includes both "Monique Dubois" and "Olga Sokolova"
    And I wait until the VoiceCallTranscript record page for the call between "Monique Dubois" and "Olga Sokolova" opens
    And I read the whole transcript on the record page, including the product Monique Dubois proposes for testing and optimizing configurations in a virtual environment
    Then I answer with only the exact product name
