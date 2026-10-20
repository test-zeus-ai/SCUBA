Feature: SCUBA benchmark case sales_015_004 - Report Xia's maximum purchase budget

  # Original request: Please review the VoiceCallTranscript record between Fatima Al-Masri and Xia Li and identify Xia’s maximum budget for the purchase. Return the amount only, including the currency symbol.

  Scenario: Sales user reads the call transcript between Fatima Al-Masri and Xia Li
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "VoiceCallTranscripts" item in the App Launcher
    And I wait until the "VoiceCallTranscripts" list view is ready
    And I click the "Select a List View: VoiceCallTranscripts" button
    And I click the "All" option in the list view menu
    And I wait until the "All" list view for VoiceCallTranscripts is ready
    And I search for "Fatima Al-Masri" in the "Search this list..." search field and press Enter
    And I click the VoiceCallTranscript link whose name includes both "Fatima Al-Masri" and "Xia Li"
    And I wait until the VoiceCallTranscript record page for the call between "Fatima Al-Masri" and "Xia Li" opens
    And I read the whole transcript on the record page, including the maximum budget Xia Li states for the purchase
    Then I answer with only the budget amount, including its currency symbol
