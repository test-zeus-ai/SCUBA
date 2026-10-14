Feature: SCUBA benchmark case sales_006_001
  Original request: Our company R&D department announced a new Product Family for "Running Shoes". For this release, we have two products. The first product "ChillRun" with the product code "CHILL-001" is the "best fit for lightweight exercise"; and the second product "MonsterRun" with the product code "MONS-001" is "designed for Marathon fans". Help me to create the relevant info in the Product records.

  Scenario: Create the Running Shoes product family and its two products
    Given the Salesforce Lightning app is open and I am signed in to the benchmark organization
    When I click the gear icon and open "Setup"
    And I open the "Object Manager" tab and open the object "Product"
    And I open "Fields & Relationships" and click the field "Product Family"
    And in the "Values" section I click "New"
    And I enter "Running Shoes" as the new picklist value and click "Save"
    And I click the App Launcher, search for "Products" and open the Products tab
    And I click the "New" button
    And I enter "ChillRun" in the "Product Name" field
    And I enter "CHILL-001" in the "Product Code" field
    And I select "Running Shoes" in the "Product Family" field
    And I enter "best fit for lightweight exercise" in the "Product Description" field
    And I check the "Active" checkbox
    And I click "Save"
    And I return to the Products tab
    And I click the "New" button
    And I enter "MonsterRun" in the "Product Name" field
    And I enter "MONS-001" in the "Product Code" field
    And I select "Running Shoes" in the "Product Family" field
    And I enter "designed for Marathon fans" in the "Product Description" field
    And I check the "Active" checkbox
    And I click "Save"
    And I return to the Products tab
    Then the Products list shows "ChillRun" with Product Code "CHILL-001" and "MonsterRun" with Product Code "MONS-001", both in Product Family "Running Shoes"
    And Test Ended
