Feature: SCUBA benchmark case sales_006_003 - Create a product family and its products

  # Original request: EcoMotion has launched a new Product Family in the "Electric Bike" category. For this release, we have one product. The product "CityCruze" with the product code "CityCruze" is "designed for daily commuters, offering pedal assist, lightweight frame, and a 40-mile battery range". Help me to create the relevant info in the Product records.

  Scenario: Sales operations creates the Electric Bike product family and its products
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Products" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Products is ready
    And I click "Edit Object" in the "Setup" menu in the global header
    And I wait until the "Product" object page in Setup is ready in the new browser tab
    And I click the "Fields & Relationships" link in the Product object sidebar
    And I click the "Product Family" link in the "Fields & Relationships" list
    And I click the "New" button in the "Values" section
    And I wait until the "Add Picklist Values" page is ready
    And I fill "Electric Bike" in the picklist values textarea
    And I click the "Save" button on the "Add Picklist Values" page
    And I wait until the "Values" section lists "Electric Bike"
    And I switch to the Salesforce Lightning app browser tab
    And I click the "App Launcher" button
    And I click the "Products" item in the App Launcher
    And I click the "New" button on the Products list
    And I wait until the "New Product" modal is ready
    And I fill "CityCruze" in the "Product Name" text field
    And I fill "CityCruze" in the "Product Code" text field
    And I select "Electric Bike" from the "Product Family" picklist
    And I fill "designed for daily commuters, offering pedal assist, lightweight frame, and a 40-mile battery range" in the "Product Description" textarea
    And I ensure the "Active" checkbox is checked
    And I click the "Save" button in the "New Product" modal
    And I wait until the Product record page opens
    And I click the "App Launcher" button
    And I click the "Products" item in the App Launcher
    And I select "All Products" from the "Select a List View" picklist
    And I wait until the "All Products" list view is ready
    Then the "All Products" list should show the product "CityCruze" with Product Family "Electric Bike" and Product Code "CityCruze"
