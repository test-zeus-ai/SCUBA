Feature: SCUBA benchmark case sales_010_001 - Create a sales process

  # Original request: Go ahead and spin up a Sales Process called 'B2B' with exactly these stages—and nothing else: Prospecting, Qualification, Closed Won, Closed Lost.

  Scenario: Sales administrator creates the B2B sales process
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I search for "Sales Processes" in the "Quick Find" search field
    And I click the "Sales Processes" link in the Setup sidebar
    And I wait until the "Sales Processes" page is ready
    And I click the "New" button on the "Sales Processes" page
    And I wait until the "Sales Process Edit" page is ready
    And I select "--Master--" from the "Existing Sales Process" picklist on the "Sales Process Edit" page
    And I fill "B2B" in the "Sales Process Name" text field on the "Sales Process Edit" page
    And I click the "Save" button on the "Sales Process Edit" page
    And I wait until the "Selected Values" list is ready on the "Sales Process Edit" page
    And I select "Needs Analysis (Open, 20%, Pipeline)" from the "Selected Values" list on the "Sales Process Edit" page
    And I click the "Remove" arrow between the "Available Values" and "Selected Values" lists
    And I select "Value Proposition (Open, 50%, Pipeline)" from the "Selected Values" list on the "Sales Process Edit" page
    And I click the "Remove" arrow between the "Available Values" and "Selected Values" lists
    And I select "Id. Decision Makers (Open, 60%, Pipeline)" from the "Selected Values" list on the "Sales Process Edit" page
    And I click the "Remove" arrow between the "Available Values" and "Selected Values" lists
    And I select "Perception Analysis (Open, 70%, Pipeline)" from the "Selected Values" list on the "Sales Process Edit" page
    And I click the "Remove" arrow between the "Available Values" and "Selected Values" lists
    And I select "Proposal/Price Quote (Open, 75%, Pipeline)" from the "Selected Values" list on the "Sales Process Edit" page
    And I click the "Remove" arrow between the "Available Values" and "Selected Values" lists
    And I select "Negotiation/Review (Open, 90%, Pipeline)" from the "Selected Values" list on the "Sales Process Edit" page
    And I click the "Remove" arrow between the "Available Values" and "Selected Values" lists
    And I click the "Save" button on the "Sales Process Edit" page
    And I wait until the "B2B" sales process detail page is ready
    Then the "B2B" sales process should include only the stages "Prospecting", "Qualification", "Closed Won", "Closed Lost"
