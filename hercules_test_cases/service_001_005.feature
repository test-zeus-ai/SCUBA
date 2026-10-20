Feature: SCUBA benchmark case service_001_005 - Create the enterprise client support queue

  # Original request: Set up a queue called "enterprise client support," associate it with the Case object, and include Alice Bob and Sofia Bennett as members.
  # Interpretation: Members "User: Alice Bob" and "User: Sofia Bennett" <- "include Alice Bob and Sofia Bennett as members"

  Scenario: Support administrator creates the enterprise client support queue
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I search for "Queues" in the "Quick Find" search field
    And I click the "Queues" link in the Setup sidebar
    And I wait until the "Queues" page is ready
    And I click the "New" button on the "Queues" page
    And I wait until the queue edit page shows the "Label" field
    And I fill "enterprise client support" in the "Label" text field on the queue edit page
    And I select "Case" from the "Available Objects" list on the queue edit page
    And I click the "Add" arrow between the "Available Objects" and "Selected Objects" lists
    And I select "Users" from the "Search" picklist in the "Queue Members" section
    And I wait until the "Available Members" list shows "User: Alice Bob"
    And I select "User: Alice Bob" from the "Available Members" list on the queue edit page
    And I click the "Add" arrow between the "Available Members" and "Selected Members" lists
    And I select "Users" from the "Search" picklist in the "Queue Members" section
    And I wait until the "Available Members" list shows "User: Sofia Bennett"
    And I select "User: Sofia Bennett" from the "Available Members" list on the queue edit page
    And I click the "Add" arrow between the "Available Members" and "Selected Members" lists
    And I click the "Save" button on the queue edit page
    And I wait until the "enterprise client support" queue detail page is ready
    Then the "enterprise client support" queue should show Supported Object "Case" and the members "Alice Bob" and "Sofia Bennett"
