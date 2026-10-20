Feature: SCUBA benchmark case service_001_002 - Create the VIP Support queue

  # Original request: Create a queue with name "VIP Support". Add the Object "Buyer Group". Include "Role: SVP, Customer Service & Support" and "Role: Customer Support, International" as the Members.

  Scenario: Support administrator creates the VIP Support queue
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I search for "Queues" in the "Quick Find" search field
    And I click the "Queues" link in the Setup sidebar
    And I wait until the "Queues" page is ready
    And I click the "New" button on the "Queues" page
    And I wait until the queue edit page shows the "Label" field
    And I fill "VIP Support" in the "Label" text field on the queue edit page
    And I select "Buyer Group" from the "Available Objects" list on the queue edit page
    And I click the "Add" arrow between the "Available Objects" and "Selected Objects" lists
    And I select "Roles" from the "Search" picklist in the "Queue Members" section
    And I wait until the "Available Members" list shows "Role: SVP, Customer Service & Support"
    And I select "Role: SVP, Customer Service & Support" from the "Available Members" list on the queue edit page
    And I click the "Add" arrow between the "Available Members" and "Selected Members" lists
    And I select "Roles" from the "Search" picklist in the "Queue Members" section
    And I wait until the "Available Members" list shows "Role: Customer Support, International"
    And I select "Role: Customer Support, International" from the "Available Members" list on the queue edit page
    And I click the "Add" arrow between the "Available Members" and "Selected Members" lists
    And I click the "Save" button on the queue edit page
    And I wait until the "VIP Support" queue detail page is ready
    Then the "VIP Support" queue should show Supported Object "Buyer Group" and the members "SVP, Customer Service & Support" and "Customer Support, International"
