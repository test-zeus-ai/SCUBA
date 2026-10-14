Feature: SCUBA benchmark case sales_006_003
  Original request: EcoMotion has launched a new Product Family in the "Electric Bike" category. For this release, we have one product. The product "CityCruze" with the product code "CityCruze" is "designed for daily commuters, offering pedal assist, lightweight frame, and a 40-mile battery range". Help me to create the relevant info in the Product records.

  Scenario: Create the Electric Bike product family and its product
    Given the Salesforce Lightning app is open and I am signed in to the benchmark organization
    When I click the gear icon and open "Setup"
    And I open the "Object Manager" tab and open the object "Product"
    And I open "Fields & Relationships" and click the field "Product Family"
    And in the "Values" section I click "New"
    And I enter "Electric Bike" as the new picklist value and click "Save"
    And I click the App Launcher, search for "Products" and open the Products tab
    And I click the "New" button
    And I enter "CityCruze" in the "Product Name" field
    And I enter "CityCruze" in the "Product Code" field
    And I select "Electric Bike" in the "Product Family" field
    And I enter "designed for daily commuters, offering pedal assist, lightweight frame, and a 40-mile battery range" in the "Product Description" field
    And I check the "Active" checkbox
    And I click "Save"
    And I return to the Products tab
    Then the Products list shows "CityCruze" with Product Code "CityCruze" in Product Family "Electric Bike"
    And Test Ended
