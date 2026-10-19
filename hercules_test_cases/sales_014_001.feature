Feature: SCUBA benchmark case sales_014_001 - Check an opportunity's stage against its activity

  # Original request: Could you sanity-check the pipeline stage on the opportunity "QuantumLeap Integration Opportunity"? Does the current stage label truly match what's happening in the deal? If not, pick the correct stage from this list and return only that label: ('Prospecting', 'Qualification', 'Needs Analysis', 'Value Proposition', 'Id. Decision Makers', 'Perception Analysis', 'Proposal/Price Quote', 'Negotiation/Review', 'Closed Won', 'Closed Lost'). If it's already right, return "Correct".

  Scenario: Sales manager checks whether QuantumLeap Integration Opportunity is at the right stage
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Opportunities" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Opportunities is ready
    And I click the "Select a List View: Opportunities" button
    And I click the "All Opportunities" option in the list view menu
    And I wait until the "All Opportunities" list view is ready
    And I search for "QuantumLeap Integration Opportunity" in the "Search this list..." search field and press Enter
    And I click the "QuantumLeap Integration Opportunity" link in the Opportunities list
    And I wait until the Opportunity record page for "QuantumLeap Integration Opportunity" opens
    And I read the current "Stage" value in the "Details" tab
    And I read the "Description" and "Next Step" fields in the "Details" tab
    And I open the "Activity" tab on the Opportunity record page
    And I read every logged activity in the "Activity" tab, expanding past and upcoming activities
    Then I answer with only one label: "Correct" if the current stage matches the deal's activity, otherwise the matching stage from "Prospecting", "Qualification", "Needs Analysis", "Value Proposition", "Id. Decision Makers", "Perception Analysis", "Proposal/Price Quote", "Negotiation/Review", "Closed Won", "Closed Lost"
