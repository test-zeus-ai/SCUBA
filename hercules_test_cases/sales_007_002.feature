Feature: SCUBA benchmark case sales_007_002 - Create price books for a product

  # Original request: Seasonal promos incoming—please create price books for CoolBreeze Elite: Summer Special priced at $120 per unit and Winter Deal priced at $110 per unit. Include the specified product in both price books, using those unit prices.

  Scenario: Sales operations creates price books for CoolBreeze Elite
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Price Books" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Price Books is ready
    And I click the "New" button on the Price Books list
    And I wait until the "New Price Book" modal is ready
    And I fill "Summer Special" in the "Price Book Name" text field
    And I ensure the "Active" checkbox is checked
    And I click the "Save" button in the "New Price Book" modal
    And I wait until the Price Book record page for "Summer Special" opens
    And I open the "Related" tab on the Price Book record page
    And I click the "Add Products" button in the "Price Book Entries" related list
    And I wait until the "Add Products" dialog is ready
    And I search for "CoolBreeze Elite" in the "Search Products..." search field and press Enter
    And I check the checkbox in the "CoolBreeze Elite" row of the "Add Products" dialog
    And I click the "Next" button in the "Add Products" dialog
    And I wait until the "Edit Selected Price Book Entries" dialog is ready
    And I fill "120" in the "List Price" field in the "CoolBreeze Elite" row of the "Edit Selected Price Book Entries" dialog
    And I click the "Save" button in the "Edit Selected Price Book Entries" dialog
    And I wait until the "Price Book Entries" related list lists "CoolBreeze Elite"
    And I click the "App Launcher" button
    And I click the "Price Books" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Price Books is ready
    And I click the "New" button on the Price Books list
    And I wait until the "New Price Book" modal is ready
    And I fill "Winter Deal" in the "Price Book Name" text field
    And I ensure the "Active" checkbox is checked
    And I click the "Save" button in the "New Price Book" modal
    And I wait until the Price Book record page for "Winter Deal" opens
    And I open the "Related" tab on the Price Book record page
    And I click the "Add Products" button in the "Price Book Entries" related list
    And I wait until the "Add Products" dialog is ready
    And I search for "CoolBreeze Elite" in the "Search Products..." search field and press Enter
    And I check the checkbox in the "CoolBreeze Elite" row of the "Add Products" dialog
    And I click the "Next" button in the "Add Products" dialog
    And I wait until the "Edit Selected Price Book Entries" dialog is ready
    And I fill "110" in the "List Price" field in the "CoolBreeze Elite" row of the "Edit Selected Price Book Entries" dialog
    And I click the "Save" button in the "Edit Selected Price Book Entries" dialog
    And I wait until the "Price Book Entries" related list lists "CoolBreeze Elite"
    Then the "Price Book Entries" related list on the "Winter Deal" price book should show "CoolBreeze Elite" with List Price "$110.00"
    And I click the "App Launcher" button
    And I click the "Price Books" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Price Books is ready
    And I click the "Summer Special" link in the Price Books list
    And I wait until the Price Book record page for "Summer Special" opens
    And I open the "Related" tab on the Price Book record page
    And the "Price Book Entries" related list on the "Summer Special" price book should show "CoolBreeze Elite" with List Price "$120.00"
