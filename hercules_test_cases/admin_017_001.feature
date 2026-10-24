Feature: SCUBA benchmark case admin_017_001 - Update MyAnimal description and Breed help text

  # Original request: Could you hop into the MyAnimal object and change its description to "Updated Description"? Also, update the Breed field’s help text so it says "Updated Help text for breed".

  Scenario: Administrator updates the MyAnimal object description and the Breed help text
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I click the "Object Manager" tab in Setup
    And I wait until the Object Manager list is ready
    And I search for "MyAnimal" in the Object Manager "Quick Find" search field
    And I click the "MyAnimal" link in the Object Manager list
    And I wait until the "MyAnimal" object details page is ready
    And I click the "Edit" button on the "MyAnimal" object details page
    And I wait until the "MyAnimal" object edit page shows the "Description" field
    And I fill "Updated Description" in the "Description" textarea on the object edit page
    And I click the "Save" button on the object edit page
    And I wait until the "MyAnimal" object details page is ready
    And I click the "Fields & Relationships" link in the object sidebar
    And I click the "Breed" link in the "Fields & Relationships" list
    And I wait until the "Breed" field details page is ready
    And I click the "Edit" button on the "Breed" field details page
    And I wait until the field edit page shows the "Help Text" field
    And I fill "Updated Help text for breed" in the "Help Text" textarea on the field edit page
    And I click the "Save" button on the field edit page
    And I wait until the "Breed" field details page is ready
    Then the "MyAnimal" object should have description "Updated Description" and the "Breed" field should have help text "Updated Help text for breed"
