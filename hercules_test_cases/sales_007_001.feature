Feature: SCUBA benchmark case sales_007_001 - Create price books for a product

  # Original request: Go ahead and set up two price books for the ThermalMax Pro—one named Holiday Sale at $150 per unit and another named Year End Special at $140 per unit. Make sure the specified product is included in each book with those exact unit prices.

  Scenario: Sales operations creates price books for ThermalMax Pro
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Price Books" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Price Books is ready
    And I click the "New" button on the Price Books list
    And I wait until the "New Price Book" modal is ready
    And I fill "Holiday Sale" in the "Price Book Name" text field
    And I ensure the "Active" checkbox is checked
    And I click the "Save" button in the "New Price Book" modal
    And I wait until the Price Book record page for "Holiday Sale" opens
    And I open the "Related" tab on the Price Book record page
    And I click the "Add Products" button in the "Price Book Entries" related list
    And I wait until the "Add Products" dialog is ready
    And I check the "Select item ThermalMax Pro" checkbox in the "Add Products" dialog
    And I click the "Next" button in the "Add Products" dialog
    And I wait until the "Edit Selected Price Book Entries" dialog is ready
    And I fill "150" in the "List Price" field in the "ThermalMax Pro" row of the "Edit Selected Price Book Entries" dialog
    And I click the "Save" button in the "Edit Selected Price Book Entries" dialog
    And I wait until the "Price Book Entries" related list lists "ThermalMax Pro"
    And I click the "App Launcher" button
    And I click the "Price Books" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Price Books is ready
    And I click the "New" button on the Price Books list
    And I wait until the "New Price Book" modal is ready
    And I fill "Year End Special" in the "Price Book Name" text field
    And I ensure the "Active" checkbox is checked
    And I click the "Save" button in the "New Price Book" modal
    And I wait until the Price Book record page for "Year End Special" opens
    And I open the "Related" tab on the Price Book record page
    And I click the "Add Products" button in the "Price Book Entries" related list
    And I wait until the "Add Products" dialog is ready
    And I check the "Select item ThermalMax Pro" checkbox in the "Add Products" dialog
    And I click the "Next" button in the "Add Products" dialog
    And I wait until the "Edit Selected Price Book Entries" dialog is ready
    And I fill "140" in the "List Price" field in the "ThermalMax Pro" row of the "Edit Selected Price Book Entries" dialog
    And I click the "Save" button in the "Edit Selected Price Book Entries" dialog
    And I wait until the "Price Book Entries" related list lists "ThermalMax Pro"
    Then the "Price Book Entries" related list on the "Year End Special" price book should show "ThermalMax Pro" with List Price "$140.00"
    And I click the "App Launcher" button
    And I click the "Price Books" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Price Books is ready
    And I click the "Holiday Sale" link in the Price Books list
    And I wait until the Price Book record page for "Holiday Sale" opens
    And I open the "Related" tab on the Price Book record page
    And the "Price Book Entries" related list on the "Holiday Sale" price book should show "ThermalMax Pro" with List Price "$150.00"
