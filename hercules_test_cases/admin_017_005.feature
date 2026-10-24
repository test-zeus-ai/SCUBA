Feature: SCUBA benchmark case admin_017_005 - Update MyInventory description and StockLevel help text

  # Original request: While you’re at it, adjust MyInventory as follows: change the object description to "Manages current inventory items, quantities, and stock levels." and set the StockLevel field’s help text to "Specify how many units are currently available in stock."

  Scenario: Administrator updates the MyInventory object description and the StockLevel help text
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I click the "Object Manager" tab in Setup
    And I wait until the Object Manager list is ready
    And I search for "MyInventory" in the Object Manager "Quick Find" search field
    And I click the "MyInventory" link in the Object Manager list
    And I wait until the "MyInventory" object details page is ready
    And I click the "Edit" button on the "MyInventory" object details page
    And I wait until the "MyInventory" object edit page shows the "Description" field
    And I fill "Manages current inventory items, quantities, and stock levels." in the "Description" textarea on the object edit page
    And I click the "Save" button on the object edit page
    And I wait until the "MyInventory" object details page is ready
    And I click the "Fields & Relationships" link in the object sidebar
    And I click the "StockLevel" link in the "Fields & Relationships" list
    And I wait until the "StockLevel" field details page is ready
    And I click the "Edit" button on the "StockLevel" field details page
    And I wait until the field edit page shows the "Help Text" field
    And I fill "Specify how many units are currently available in stock." in the "Help Text" textarea on the field edit page
    And I click the "Save" button on the field edit page
    And I wait until the "StockLevel" field details page is ready
    Then the "MyInventory" object should have description "Manages current inventory items, quantities, and stock levels." and the "StockLevel" field should have help text "Specify how many units are currently available in stock."
