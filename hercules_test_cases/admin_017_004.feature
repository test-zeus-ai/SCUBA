Feature: SCUBA benchmark case admin_017_004 - Update MyVehicle description and NumWheels help text

  # Original request: Do the following on MyVehicle: 1) Set the description to "Contains details about vehicle, like number of wheels, engine type, etc." 2) Update the NumWheels field help text to "Describes the number of wheels in the vehicle".

  Scenario: Administrator updates the MyVehicle object description and the NumWheels help text
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I click the "Object Manager" tab in Setup
    And I wait until the Object Manager list is ready
    And I search for "MyVehicle" in the Object Manager "Quick Find" search field
    And I click the "MyVehicle" link in the Object Manager list
    And I wait until the "MyVehicle" object details page is ready
    And I click the "Edit" button on the "MyVehicle" object details page
    And I wait until the "MyVehicle" object edit page shows the "Description" field
    And I fill "Contains details about vehicle, like number of wheels, engine type, etc." in the "Description" textarea on the object edit page
    And I click the "Save" button on the object edit page
    And I wait until the "MyVehicle" object details page is ready
    And I click the "Fields & Relationships" link in the object sidebar
    And I click the "NumWheels" link in the "Fields & Relationships" list
    And I wait until the "NumWheels" field details page is ready
    And I click the "Edit" button on the "NumWheels" field details page
    And I wait until the field edit page shows the "Help Text" field
    And I fill "Describes the number of wheels in the vehicle" in the "Help Text" textarea on the field edit page
    And I click the "Save" button on the field edit page
    And I wait until the "NumWheels" field details page is ready
    Then the "MyVehicle" object should have description "Contains details about vehicle, like number of wheels, engine type, etc." and the "NumWheels" field should have help text "Describes the number of wheels in the vehicle"
