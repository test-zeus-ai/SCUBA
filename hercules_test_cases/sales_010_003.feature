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
    And I select "Master" from the "Existing Sales Process" picklist on the "Sales Process Edit" page
    And I fill "B2C" in the "Sales Process Name" text field on the "Sales Process Edit" page
    And I click the "Save" button on the "Sales Process Edit" page
    And I wait until the "Selected Values" list is ready on the "Sales Process Edit" page
    And I move "Prospecting" from the "Selected Values" list to the "Available Values" list
    And I move "Qualification" from the "Selected Values" list to the "Available Values" list
    And I move "Value Proposition" from the "Selected Values" list to the "Available Values" list
    And I move "Id. Decision Makers" from the "Selected Values" list to the "Available Values" list
    And I move "Perception Analysis" from the "Selected Values" list to the "Available Values" list
    And I move "Negotiation/Review" from the "Selected Values" list to the "Available Values" list
    And I move "Closed Lost" from the "Selected Values" list to the "Available Values" list
    And I click the "Save" button on the "Sales Process Edit" page
    And I wait until the "B2C" sales process detail page is ready
    Then the "B2C" sales process should include only the stages "Needs Analysis", "Proposal/Price Quote", "Closed Won"
