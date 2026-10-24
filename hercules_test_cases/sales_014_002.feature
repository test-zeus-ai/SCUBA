Feature: SCUBA benchmark case sales_014_002 - Check an opportunity's stage against its activity

  # Original request: Review the opportunity "Quantum Dynamics EDA Integration" and verify whether its stage name reflects the actual activity. If there's a mismatch, output the proper stage chosen strictly from ('Prospecting', 'Qualification', 'Needs Analysis', 'Value Proposition', 'Id. Decision Makers', 'Perception Analysis', 'Proposal/Price Quote', 'Negotiation/Review', 'Closed Won', 'Closed Lost'). If the current stage is accurate, output "Correct". Return only the single label or "Correct".

  Scenario: Sales manager checks whether Quantum Dynamics EDA Integration is at the right stage
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Opportunities" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Opportunities is ready
    And I click the "Select a List View: Opportunities" button
    And I click the "All Opportunities" option in the list view menu
    And I wait until the "All Opportunities" list view is ready
    And I search for "Quantum Dynamics EDA Integration" in the "Search this list..." search field and press Enter
    And I click the "Quantum Dynamics EDA Integration" link in the Opportunities list
    And I wait until the Opportunity record page for "Quantum Dynamics EDA Integration" opens
    And I read the current "Stage" value in the "Details" tab
    And I read the "Description" and "Next Step" fields in the "Details" tab
    And I open the "Activity" tab on the Opportunity record page
    And I read every logged activity in the "Activity" tab, expanding past and upcoming activities
    Then I answer with only one label: "Correct" if the current stage matches the deal's activity, otherwise the matching stage from "Prospecting", "Qualification", "Needs Analysis", "Value Proposition", "Id. Decision Makers", "Perception Analysis", "Proposal/Price Quote", "Negotiation/Review", "Closed Won", "Closed Lost"
