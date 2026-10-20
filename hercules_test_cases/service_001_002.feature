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
    And I move "Buyer Group" from the "Available Objects" list to the "Selected Objects" list on the queue edit page
    And I select "Roles" from the "Search" picklist in the "Queue Members" section
    And I fill "SVP, Customer Service & Support" in the "for:" text field in the "Queue Members" section
    And I click the "Find" button in the "Queue Members" section
    And I move "Role: SVP, Customer Service & Support" from the "Available Members" list to the "Selected Members" list on the queue edit page
    And I select "Roles" from the "Search" picklist in the "Queue Members" section
    And I fill "Customer Support, International" in the "for:" text field in the "Queue Members" section
    And I click the "Find" button in the "Queue Members" section
    And I move "Role: Customer Support, International" from the "Available Members" list to the "Selected Members" list on the queue edit page
    And I click the "Save" button on the queue edit page
    And I wait until the "VIP Support" queue detail page is ready
    Then the "VIP Support" queue should show Supported Object "Buyer Group" and the members "SVP, Customer Service & Support" and "Customer Support, International"
