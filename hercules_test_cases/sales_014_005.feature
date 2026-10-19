Feature: SCUBA benchmark case sales_014_005 - Check an opportunity's stage against its activity

  # Original request: Quick gut check on the opportunity "DigitalWave-TechPulse Strategic Partnership": is the current stage actually the right fit? If not, select the best-matching stage from ('Prospecting', 'Qualification', 'Needs Analysis', 'Value Proposition', 'Id. Decision Makers', 'Perception Analysis', 'Proposal/Price Quote', 'Negotiation/Review', 'Closed Won', 'Closed Lost'). Respond with just that label; if the existing stage is fine, return "Correct".

  Scenario: Sales manager checks whether DigitalWave-TechPulse Strategic Partnership is at the right stage
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Opportunities" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Opportunities is ready
    And I click the "Select a List View: Opportunities" button
    And I click the "All Opportunities" option in the list view menu
    And I wait until the "All Opportunities" list view is ready
    And I search for "DigitalWave-TechPulse Strategic Partnership" in the "Search this list..." search field and press Enter
    And I click the "DigitalWave-TechPulse Strategic Partnership" link in the Opportunities list
    And I wait until the Opportunity record page for "DigitalWave-TechPulse Strategic Partnership" opens
    And I read the current "Stage" value in the "Details" tab
    And I read the "Description" and "Next Step" fields in the "Details" tab
    And I open the "Activity" tab on the Opportunity record page
    And I read every logged activity in the "Activity" tab, expanding past and upcoming activities
    Then I answer with only one label: "Correct" if the current stage matches the deal's activity, otherwise the matching stage from "Prospecting", "Qualification", "Needs Analysis", "Value Proposition", "Id. Decision Makers", "Perception Analysis", "Proposal/Price Quote", "Negotiation/Review", "Closed Won", "Closed Lost"
