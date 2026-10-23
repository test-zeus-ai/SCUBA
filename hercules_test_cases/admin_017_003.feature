Feature: SCUBA benchmark case admin_017_003 - Update Environment description and Age help text

  # Original request: I’m tidying up metadata—please replace the Environment object’s description with "This describes a new Salesforce Environment" and update the Age field help text to "Enter the number of days this env is live"

  Scenario: Administrator updates the Environment object description and the Age help text
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I click the "Object Manager" tab in Setup
    And I wait until the Object Manager list is ready
    And I search for "Environment" in the Object Manager "Quick Find" search field
    And I click the "Environment" link in the Object Manager list
    And I wait until the "Environment" object details page is ready
    And I click the "Edit" button on the "Environment" object details page
    And I wait until the "Environment" object edit page shows the "Description" field
    And I fill "This describes a new Salesforce Environment" in the "Description" textarea on the object edit page
    And I click the "Save" button on the object edit page
    And I wait until the "Environment" object details page is ready
    And I click the "Fields & Relationships" link in the object sidebar
    And I click the "Age" link in the "Fields & Relationships" list
    And I wait until the "Age" field details page is ready
    And I click the "Edit" button on the "Age" field details page
    And I wait until the field edit page shows the "Help Text" field
    And I fill "Enter the number of days this env is live" in the "Help Text" textarea on the field edit page
    And I click the "Save" button on the field edit page
    And I wait until the "Age" field details page is ready
    Then the "Environment" object should have description "This describes a new Salesforce Environment" and the "Age" field should have help text "Enter the number of days this env is live"
