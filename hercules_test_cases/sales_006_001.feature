Feature: SCUBA benchmark case sales_006_001 - Create a product family and its products

  # Original request: Our company R&D department announced a new Product Family for "Running Shoes". For this release, we have two products. The first product "ChillRun" with the product code "CHILL-001" is the "best fit for lightweight exercise"; and the second product "MonsterRun" with the product code "MONS-001" is "designed for Marathon fans". Help me to create the relevant info in the Product records.

  Scenario: Sales operations creates the Running Shoes product family and its products
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Products" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Products is ready
    And I click "Edit Object" in the "Setup" menu in the global header
    And I wait until the "Product" object page in Setup is ready
    And I click the "Fields & Relationships" link in the Product object sidebar
    And I click the "Product Family" link in the "Fields & Relationships" list
    And I click the "New" button in the "Values" section
    And I wait until the "Add Picklist Values" page is ready
    And I fill "Running Shoes" in the "Product Family" textarea on the "Add Picklist Values" page
    And I click the "Save" button on the "Add Picklist Values" page
    And I wait until the "Values" section lists "Running Shoes"
    And I click the "App Launcher" button
    And I click the "Products" item in the App Launcher
    And I click the "New" button on the Products list
    And I wait until the "New Product" modal is ready
    And I fill "ChillRun" in the "Product Name" text field
    And I fill "CHILL-001" in the "Product Code" text field
    And I select "Running Shoes" from the "Product Family" picklist
    And I fill "best fit for lightweight exercise" in the "Product Description" textarea
    And I check the "Active" checkbox in the "New Product" modal
    And I click the "Save & New" button in the "New Product" modal
    And I wait until a new "New Product" modal is ready
    And I fill "MonsterRun" in the "Product Name" text field
    And I fill "MONS-001" in the "Product Code" text field
    And I select "Running Shoes" from the "Product Family" picklist
    And I fill "designed for Marathon fans" in the "Product Description" textarea
    And I check the "Active" checkbox in the "New Product" modal
    And I click the "Save" button in the "New Product" modal
    And I wait until the Product record page opens
    And I click the "App Launcher" button
    And I click the "Products" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Products is ready
    And I click the "Select a List View: Products" button
    And I click the "All Products" option in the list view menu
    And I wait until the "All Products" list view is ready
    And I search for "ChillRun" in the "Search this list..." search field and press Enter
    Then the "All Products" list should show the product "ChillRun" with Product Family "Running Shoes" and Product Code "CHILL-001"
    And I search for "MonsterRun" in the "Search this list..." search field and press Enter
    And the "All Products" list should show the product "MonsterRun" with Product Family "Running Shoes" and Product Code "MONS-001"
