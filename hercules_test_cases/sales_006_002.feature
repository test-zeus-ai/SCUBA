Feature: SCUBA benchmark case sales_006_002 - Create a product family and its products

  # Original request: TechNova has introduced a new Product Family focused on "Smart Home Lighting Solutions". For this release, we have three products. The first product "BrightEase" with the product code "BrightEase" is a "budget-friendly smart bulb for everyday use"; the second product "GlowSync" with the product code "BrightEase" "features customizable color schemes and app control"; and the third product "LuxEdge" with the product code "LuxEdge" is "designed for premium interiors with motion sensing and voice assistant integration". Help me to create the relevant info in the Product records.

  Scenario: Sales operations creates the Smart Home Lighting Solutions product family and its products
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
    And I fill "Smart Home Lighting Solutions" in the "Product Family" textarea on the "Add Picklist Values" page
    And I click the "Save" button on the "Add Picklist Values" page
    And I wait until the "Values" section lists "Smart Home Lighting Solutions"
    And I click the "App Launcher" button
    And I click the "Products" item in the App Launcher
    And I click the "New" button on the Products list
    And I wait until the "New Product" modal is ready
    And I fill "BrightEase" in the "Product Name" text field
    And I fill "BrightEase" in the "Product Code" text field
    And I select "Smart Home Lighting Solutions" from the "Product Family" picklist
    And I fill "budget-friendly smart bulb for everyday use" in the "Product Description" textarea
    And I ensure the "Active" checkbox is checked
    And I click the "Save & New" button in the "New Product" modal
    And I wait until a new "New Product" modal is ready
    And I fill "GlowSync" in the "Product Name" text field
    And I fill "BrightEase" in the "Product Code" text field
    And I select "Smart Home Lighting Solutions" from the "Product Family" picklist
    And I fill "features customizable color schemes and app control" in the "Product Description" textarea
    And I ensure the "Active" checkbox is checked
    And I click the "Save & New" button in the "New Product" modal
    And I wait until a new "New Product" modal is ready
    And I fill "LuxEdge" in the "Product Name" text field
    And I fill "LuxEdge" in the "Product Code" text field
    And I select "Smart Home Lighting Solutions" from the "Product Family" picklist
    And I fill "designed for premium interiors with motion sensing and voice assistant integration" in the "Product Description" textarea
    And I ensure the "Active" checkbox is checked
    And I click the "Save" button in the "New Product" modal
    And I wait until the Product record page opens
    And I click the "App Launcher" button
    And I click the "Products" item in the App Launcher
    And I select "All Products" from the "Select a List View" picklist
    And I wait until the "All Products" list view is ready
    Then the "All Products" list should show the product "BrightEase" with Product Family "Smart Home Lighting Solutions" and Product Code "BrightEase"
    And the "All Products" list should show the product "GlowSync" with Product Family "Smart Home Lighting Solutions" and Product Code "BrightEase"
    And the "All Products" list should show the product "LuxEdge" with Product Family "Smart Home Lighting Solutions" and Product Code "LuxEdge"
