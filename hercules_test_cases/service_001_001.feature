Feature: SCUBA benchmark case service_001_001 - Create the Shoe Case Support queue

  # Original request: Create a queue named "Shoe Case Support." Limit notification emails so they go only to the "support.shoe@papaltd.com" distribution list. Add the Customer object, and add the role "Customer Support, North America" as a member.
  # Interpretation: Queue Name "Shoe_Case_Support" <- Salesforce API name for the queue label "Shoe Case Support" (spaces become underscores)
  # Interpretation: Queue Email "support.shoe@papaltd.com" with "Send Email to Members" unchecked <- "Limit notification emails so they go only to the"

  Scenario: Support administrator creates the Shoe Case Support queue
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I search for "Queues" in the "Quick Find" search field
    And I click the "Queues" link in the Setup sidebar
    And I wait until the "Queues" page is ready
    And I click the "New" button on the "Queues" page
    And I wait until the queue edit page shows the "Label" field
    And I fill "Shoe Case Support" in the "Label" text field on the queue edit page
    And I fill "Shoe_Case_Support" in the "Queue Name" text field on the queue edit page
    And I fill "support.shoe@papaltd.com" in the "Queue Email" text field on the queue edit page
    And I uncheck the "Send Email to Members" checkbox on the queue edit page
    And I move "Customer" from the "Available Objects" list to the "Selected Objects" list on the queue edit page
    And I select "Roles" from the "Search:" picklist in the "Queue Members" section
    And I fill "Customer Support, North America" in the "for:" text field in the "Queue Members" section
    And I click the "Find" button in the "Queue Members" section
    And I move "Role: Customer Support, North America" from the "Available Members" list to the "Selected Members" list on the queue edit page
    And I click the "Save" button on the queue edit page
    And I wait until the "Shoe Case Support" queue detail page is ready
    Then the "Shoe Case Support" queue should show Queue Email "support.shoe@papaltd.com", Supported Object "Customer" and the member "Customer Support, North America"
