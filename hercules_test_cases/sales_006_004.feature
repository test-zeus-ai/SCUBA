Feature: SCUBA benchmark case sales_006_004 - Create a product family and its products

  # Original request: The Smart Home Security product family offers advanced solutions for home protection and monitoring.. SmartLock Pro for advanced door security, WatchCam 360 for comprehensive surveillance, and AlertSense for motion detection and alerts. Help me to create the relevant info in the Product records.

  Scenario: Sales operations creates the Smart Home Security product family and its products
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
    And I fill "Smart Home Security" in the "Product Family" textarea on the "Add Picklist Values" page
    And I click the "Save" button on the "Add Picklist Values" page
    And I wait until the "Values" section lists "Smart Home Security"
    And I click the "App Launcher" button
    And I click the "Products" item in the App Launcher
    And I click the "New" button on the Products list
    And I wait until the "New Product" modal is ready
    And I fill "SmartLock Pro" in the "Product Name" text field
    And I select "Smart Home Security" from the "Product Family" picklist
    And I fill "advanced door security" in the "Product Description" textarea
    And I check the "Active" checkbox in the "New Product" modal
    And I click the "Save & New" button in the "New Product" modal
    And I wait until a new "New Product" modal is ready
    And I fill "WatchCam 360" in the "Product Name" text field
    And I select "Smart Home Security" from the "Product Family" picklist
    And I fill "comprehensive surveillance" in the "Product Description" textarea
    And I check the "Active" checkbox in the "New Product" modal
    And I click the "Save & New" button in the "New Product" modal
    And I wait until a new "New Product" modal is ready
    And I fill "AlertSense" in the "Product Name" text field
    And I select "Smart Home Security" from the "Product Family" picklist
    And I fill "motion detection and alerts" in the "Product Description" textarea
    And I check the "Active" checkbox in the "New Product" modal
    And I click the "Save" button in the "New Product" modal
    And I wait until the Product record page opens
    And I click the "App Launcher" button
    And I click the "Products" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Products is ready
    And I click the "Select a List View: Products" button
    And I click the "All Products" option in the list view menu
    And I wait until the "All Products" list view is ready
    And I search for "SmartLock Pro" in the "Search this list..." search field and press Enter
    Then the "All Products" list should show the product "SmartLock Pro" with Product Family "Smart Home Security"
    And I search for "WatchCam 360" in the "Search this list..." search field and press Enter
    And the "All Products" list should show the product "WatchCam 360" with Product Family "Smart Home Security"
    And I search for "AlertSense" in the "Search this list..." search field and press Enter
    And the "All Products" list should show the product "AlertSense" with Product Family "Smart Home Security"
