Feature: SCUBA benchmark case sales_010_003 - Create a sales process

  # Original request: Let’s keep this simple: create a Sales Process named 'B2C' that includes only three stages—Needs Analysis, Proposal/Price Quote, and Closed Won.

  Scenario: Sales administrator creates the B2C sales process
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I search for "Sales Processes" in the "Quick Find" search field
    And I click the "Sales Processes" link in the Setup sidebar
    And I wait until the "Sales Processes" page is ready
    And I click the "New" button on the "Sales Processes" page
    And I wait until the "Sales Process Edit" page is ready
    And I select "--Master--" from the "Existing Sales Process" picklist on the "Sales Process Edit" page
    And I fill "B2C" in the "Sales Process Name" text field on the "Sales Process Edit" page
    And I click the "Save" button on the "Sales Process Edit" page
    And I wait until the "Selected Values" list is ready on the "Sales Process Edit" page
    And I select "Prospecting (Open, 10%, Pipeline)" from the "Selected Values" list on the "Sales Process Edit" page
    And I click the "Remove" arrow between the "Available Values" and "Selected Values" lists
    And I select "Qualification (Open, 10%, Pipeline)" from the "Selected Values" list on the "Sales Process Edit" page
    And I click the "Remove" arrow between the "Available Values" and "Selected Values" lists
    And I select "Value Proposition (Open, 50%, Pipeline)" from the "Selected Values" list on the "Sales Process Edit" page
    And I click the "Remove" arrow between the "Available Values" and "Selected Values" lists
    And I select "Id. Decision Makers (Open, 60%, Pipeline)" from the "Selected Values" list on the "Sales Process Edit" page
    And I click the "Remove" arrow between the "Available Values" and "Selected Values" lists
    And I select "Perception Analysis (Open, 70%, Pipeline)" from the "Selected Values" list on the "Sales Process Edit" page
    And I click the "Remove" arrow between the "Available Values" and "Selected Values" lists
    And I select "Negotiation/Review (Open, 90%, Pipeline)" from the "Selected Values" list on the "Sales Process Edit" page
    And I click the "Remove" arrow between the "Available Values" and "Selected Values" lists
    And I select "Closed Lost (Closed/Lost, 0%, Omitted)" from the "Selected Values" list on the "Sales Process Edit" page
    And I click the "Remove" arrow between the "Available Values" and "Selected Values" lists
    And I click the "Save" button on the "Sales Process Edit" page
    And I wait until the "B2C" sales process detail page is ready
    Then the "B2C" sales process should include only the stages "Needs Analysis", "Proposal/Price Quote", "Closed Won"
