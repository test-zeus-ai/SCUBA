Feature: SCUBA benchmark case sales_015_002 - Report the unit price Carlos quotes for AutoLayout Master

  # Original request: In the VoiceCallTranscript record for Carlos Fernandez and Rajesh Kumar, what price does Carlos quote Rajesh for one unit of AutoLayout Master? Respond with the number plus the currency symbol only.

  Scenario: Sales user reads the call transcript between Carlos Fernandez and Rajesh Kumar
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "VoiceCallTranscripts" item in the App Launcher
    And I wait until the "VoiceCallTranscripts" list view is ready
    And I click the "Select a List View: VoiceCallTranscripts" button
    And I click the "All" option in the list view menu
    And I wait until the "All" list view for VoiceCallTranscripts is ready
    And I search for "Carlos Fernandez" in the "Search this list..." search field and press Enter
    And I click the VoiceCallTranscript link whose name includes both "Carlos Fernandez" and "Rajesh Kumar"
    And I wait until the VoiceCallTranscript record page for the call between "Carlos Fernandez" and "Rajesh Kumar" opens
    And I read the whole transcript on the record page, including the price Carlos Fernandez quotes Rajesh Kumar for one unit of AutoLayout Master
    Then I answer with only the price for one unit, including its currency symbol
