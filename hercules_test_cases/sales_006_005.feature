Feature: SCUBA benchmark case sales_006_005 - Create a product family and its products

  # Original request: There is a new family of products focused on Professional Coffee Equipment, used for brewing, grinding, and maintaining coffee. It is designed for use in cafés and specialty coffee shops.. BrewMaster Elite for commercial espresso brewing, GrindTech Pro for precision bean grinding, SteamForce for milk frothing, and CleanCycle for automated cleaning systems. Help me to create the relevant info in the Product records.
  # Interpretation: Product Family "Professional Coffee Equipment" <- "a new family of products focused on Professional Coffee Equipment"

  Scenario: Sales operations creates the Professional Coffee Equipment product family and its products
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
    And I fill "Professional Coffee Equipment" in the "Product Family" textarea on the "Add Picklist Values" page
    And I click the "Save" button on the "Add Picklist Values" page
    And I wait until the "Values" section lists "Professional Coffee Equipment"
    And I click the "App Launcher" button
    And I click the "Products" item in the App Launcher
    And I click the "New" button on the Products list
    And I wait until the "New Product" modal is ready
    And I fill "BrewMaster Elite" in the "Product Name" text field
    And I select "Professional Coffee Equipment" from the "Product Family" picklist
    And I fill "commercial espresso brewing" in the "Product Description" textarea
    And I ensure the "Active" checkbox is checked
    And I click the "Save & New" button in the "New Product" modal
    And I wait until a new "New Product" modal is ready
    And I fill "GrindTech Pro" in the "Product Name" text field
    And I select "Professional Coffee Equipment" from the "Product Family" picklist
    And I fill "precision bean grinding" in the "Product Description" textarea
    And I ensure the "Active" checkbox is checked
    And I click the "Save & New" button in the "New Product" modal
    And I wait until a new "New Product" modal is ready
    And I fill "SteamForce" in the "Product Name" text field
    And I select "Professional Coffee Equipment" from the "Product Family" picklist
    And I fill "milk frothing" in the "Product Description" textarea
    And I ensure the "Active" checkbox is checked
    And I click the "Save & New" button in the "New Product" modal
    And I wait until a new "New Product" modal is ready
    And I fill "CleanCycle" in the "Product Name" text field
    And I select "Professional Coffee Equipment" from the "Product Family" picklist
    And I fill "automated cleaning systems" in the "Product Description" textarea
    And I ensure the "Active" checkbox is checked
    And I click the "Save" button in the "New Product" modal
    And I wait until the Product record page opens
    And I click the "App Launcher" button
    And I click the "Products" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Products is ready
    And I click the "Select a List View: Products" button
    And I click the "All Products" option in the list view menu
    And I wait until the "All Products" list view is ready
    And I search for "BrewMaster Elite" in the "Search this list..." search field and press Enter
    Then the "All Products" list should show the product "BrewMaster Elite" with Product Family "Professional Coffee Equipment"
    And I search for "GrindTech Pro" in the "Search this list..." search field and press Enter
    And the "All Products" list should show the product "GrindTech Pro" with Product Family "Professional Coffee Equipment"
    And I search for "SteamForce" in the "Search this list..." search field and press Enter
    And the "All Products" list should show the product "SteamForce" with Product Family "Professional Coffee Equipment"
    And I search for "CleanCycle" in the "Search this list..." search field and press Enter
    And the "All Products" list should show the product "CleanCycle" with Product Family "Professional Coffee Equipment"
