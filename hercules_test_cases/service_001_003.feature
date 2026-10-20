Feature: SCUBA benchmark case service_001_003 - Create the Marketing Support queue

  # Original request: Please create a queue titled "Marketing Support," and configure email alerts to be sent exclusively to the "marketing.support@business.com" distribution list. Link it to the Attribute Picklist object, and add the "User: Integration User" plus the role "Role: Marketing Team" as members.
  # Interpretation: Queue Email "marketing.support@business.com" with "Send Email to Members" unchecked <- "configure email alerts to be sent exclusively to the"

  Scenario: Support administrator creates the Marketing Support queue
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I search for "Queues" in the "Quick Find" search field
    And I click the "Queues" link in the Setup sidebar
    And I wait until the "Queues" page is ready
    And I click the "New" button on the "Queues" page
    And I wait until the queue edit page shows the "Label" field
    And I fill "Marketing Support" in the "Label" text field on the queue edit page
    And I fill "marketing.support@business.com" in the "Queue Email" text field on the queue edit page
    And I uncheck the "Send Email to Members" checkbox on the queue edit page
    And I move "Attribute Picklist" from the "Available Objects" list to the "Selected Objects" list on the queue edit page
    And I select "Users" from the "Search" picklist in the "Queue Members" section
    And I fill "Integration User" in the "for:" text field in the "Queue Members" section
    And I click the "Find" button in the "Queue Members" section
    And I move "User: Integration User" from the "Available Members" list to the "Selected Members" list on the queue edit page
    And I select "Roles" from the "Search" picklist in the "Queue Members" section
    And I fill "Marketing Team" in the "for:" text field in the "Queue Members" section
    And I click the "Find" button in the "Queue Members" section
    And I move "Role: Marketing Team" from the "Available Members" list to the "Selected Members" list on the queue edit page
    And I click the "Save" button on the queue edit page
    And I wait until the "Marketing Support" queue detail page is ready
    Then the "Marketing Support" queue should show Queue Email "marketing.support@business.com", Supported Object "Attribute Picklist" and the members "Integration User" and "Marketing Team"
