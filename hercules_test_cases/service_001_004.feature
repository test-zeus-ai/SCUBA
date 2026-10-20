Feature: SCUBA benchmark case service_001_004 - Create the tech support specialists queue

  # Original request: I need a queue named "tech support specialists": send notification emails to members of the tech.support@innovatetech.com distribution list, attach the Case object, and add Alice Bob as a member.
  # Interpretation: Queue Email "tech.support@innovatetech.com" with "Send Email to Members" unchecked <- "send notification emails to members of the tech.support@innovatetech.com distribution list"
  # Interpretation: Member "User: Alice Bob" <- "add Alice Bob as a member"

  Scenario: Support administrator creates the tech support specialists queue
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I search for "Queues" in the "Quick Find" search field
    And I click the "Queues" link in the Setup sidebar
    And I wait until the "Queues" page is ready
    And I click the "New" button on the "Queues" page
    And I wait until the queue edit page shows the "Label" field
    And I fill "tech support specialists" in the "Label" text field on the queue edit page
    And I fill "tech.support@innovatetech.com" in the "Queue Email" text field on the queue edit page
    And I uncheck the "Send Email to Members" checkbox on the queue edit page
    And I move "Case" from the "Available Objects" list to the "Selected Objects" list on the queue edit page
    And I select "Users" from the "Search" picklist in the "Queue Members" section
    And I fill "Alice Bob" in the "for:" text field in the "Queue Members" section
    And I click the "Find" button in the "Queue Members" section
    And I move "User: Alice Bob" from the "Available Members" list to the "Selected Members" list on the queue edit page
    And I click the "Save" button on the queue edit page
    And I wait until the "tech support specialists" queue detail page is ready
    Then the "tech support specialists" queue should show Queue Email "tech.support@innovatetech.com", Supported Object "Case" and the member "Alice Bob"
