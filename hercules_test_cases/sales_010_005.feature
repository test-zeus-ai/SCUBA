Feature: SCUBA benchmark case sales_010_005 - Create a sales process

  # Original request: Kick off a new Sales Process called 'Rocket Launch Sales Methodology' and limit it to only these stages: Proposal/Price Quote, Negotiation/Review, Closed Won, Closed Lost.

  Scenario: Sales administrator creates the Rocket Launch Sales Methodology sales process
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I search for "Sales Processes" in the "Quick Find" search field
    And I click the "Sales Processes" link in the Setup sidebar
    And I wait until the "Sales Processes" page is ready
    And I click the "New" button on the "Sales Processes" page
    And I wait until the "Sales Process Edit" page is ready
    And I select "--Master--" from the "Existing Sales Process" picklist on the "Sales Process Edit" page
    And I fill "Rocket Launch Sales Methodology" in the "Sales Process Name" text field on the "Sales Process Edit" page
    And I click the "Save" button on the "Sales Process Edit" page
    And I wait until the "Selected Values" list is ready on the "Sales Process Edit" page
    And I select "Prospecting (Open, 10%, Pipeline)" from the "Selected Values" list on the "Sales Process Edit" page
    And I click the "Remove" arrow between the "Available Values" and "Selected Values" lists
    And I select "Qualification (Open, 10%, Pipeline)" from the "Selected Values" list on the "Sales Process Edit" page
    And I click the "Remove" arrow between the "Available Values" and "Selected Values" lists
    And I select "Needs Analysis (Open, 20%, Pipeline)" from the "Selected Values" list on the "Sales Process Edit" page
    And I click the "Remove" arrow between the "Available Values" and "Selected Values" lists
    And I select "Value Proposition (Open, 50%, Pipeline)" from the "Selected Values" list on the "Sales Process Edit" page
    And I click the "Remove" arrow between the "Available Values" and "Selected Values" lists
    And I select "Id. Decision Makers (Open, 60%, Pipeline)" from the "Selected Values" list on the "Sales Process Edit" page
    And I click the "Remove" arrow between the "Available Values" and "Selected Values" lists
    And I select "Perception Analysis (Open, 70%, Pipeline)" from the "Selected Values" list on the "Sales Process Edit" page
    And I click the "Remove" arrow between the "Available Values" and "Selected Values" lists
    And I click the "Save" button on the "Sales Process Edit" page
    And I wait until the "Rocket Launch Sales Methodology" sales process detail page is ready
    Then the "Rocket Launch Sales Methodology" sales process should include only the stages "Proposal/Price Quote", "Negotiation/Review", "Closed Won", "Closed Lost"
