Feature: SCUBA benchmark case admin_017_002 - Update MyBike description and Brand help text

  # Original request: For MyBike, make two edits: - Set the object description to "This is the name of the Bike" - For the Brand field, set the help text to "This is the brand name of the Bike".

  Scenario: Administrator updates the MyBike object description and the Brand help text
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I click the "Object Manager" tab in Setup
    And I wait until the Object Manager list is ready
    And I search for "MyBike" in the Object Manager "Quick Find" search field
    And I click the "MyBike" link in the Object Manager list
    And I wait until the "MyBike" object details page is ready
    And I click the "Edit" button on the "MyBike" object details page
    And I wait until the "MyBike" object edit page shows the "Description" field
    And I fill "This is the name of the Bike" in the "Description" textarea on the object edit page
    And I click the "Save" button on the object edit page
    And I wait until the "MyBike" object details page is ready
    And I click the "Fields & Relationships" link in the object sidebar
    And I click the "Brand" link in the "Fields & Relationships" list
    And I wait until the "Brand" field details page is ready
    And I click the "Edit" button on the "Brand" field details page
    And I wait until the field edit page shows the "Help Text" field
    And I fill "This is the brand name of the Bike" in the "Help Text" textarea on the field edit page
    And I click the "Save" button on the field edit page
    And I wait until the "Brand" field details page is ready
    Then the "MyBike" object should have description "This is the name of the Bike" and the "Brand" field should have help text "This is the brand name of the Bike"
