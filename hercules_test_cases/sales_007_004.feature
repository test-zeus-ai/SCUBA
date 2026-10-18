Feature: SCUBA benchmark case sales_007_004 - Create price books for a product

  # Original request: Set up member-tier price books: if it’s for silver members, price the Organic Skincare Set at $100 per unit; if it’s for golden members, set it to $80 per unit. Please include the specified product in each book with those unit prices.
  # Interpretation: Price Book Name "Silver Members" <- "if it’s for silver members"
  # Interpretation: Price Book Name "Golden Members" <- "if it’s for golden members"

  Scenario: Sales operations creates price books for Organic Skincare Set
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Price Books" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Price Books is ready
    And I click the "New" button on the Price Books list
    And I wait until the "New Price Book" modal is ready
    And I fill "Silver Members" in the "Price Book Name" text field
    And I ensure the "Active" checkbox is checked
    And I click the "Save" button in the "New Price Book" modal
    And I wait until the Price Book record page for "Silver Members" opens
    And I open the "Related" tab on the Price Book record page
    And I click the "Add Products" button in the "Price Book Entries" related list
    And I wait until the "Add Products" dialog is ready
    And I search for "Organic Skincare Set" in the "Search Products..." search field and press Enter
    And I check the checkbox in the "Organic Skincare Set" row of the "Add Products" dialog
    And I click the "Next" button in the "Add Products" dialog
    And I wait until the "Edit Selected Price Book Entries" dialog is ready
    And I fill "100" in the "List Price" field in the "Organic Skincare Set" row of the "Edit Selected Price Book Entries" dialog
    And I click the "Save" button in the "Edit Selected Price Book Entries" dialog
    And I wait until the "Price Book Entries" related list lists "Organic Skincare Set"
    And I click the "App Launcher" button
    And I click the "Price Books" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Price Books is ready
    And I click the "New" button on the Price Books list
    And I wait until the "New Price Book" modal is ready
    And I fill "Golden Members" in the "Price Book Name" text field
    And I ensure the "Active" checkbox is checked
    And I click the "Save" button in the "New Price Book" modal
    And I wait until the Price Book record page for "Golden Members" opens
    And I open the "Related" tab on the Price Book record page
    And I click the "Add Products" button in the "Price Book Entries" related list
    And I wait until the "Add Products" dialog is ready
    And I search for "Organic Skincare Set" in the "Search Products..." search field and press Enter
    And I check the checkbox in the "Organic Skincare Set" row of the "Add Products" dialog
    And I click the "Next" button in the "Add Products" dialog
    And I wait until the "Edit Selected Price Book Entries" dialog is ready
    And I fill "80" in the "List Price" field in the "Organic Skincare Set" row of the "Edit Selected Price Book Entries" dialog
    And I click the "Save" button in the "Edit Selected Price Book Entries" dialog
    And I wait until the "Price Book Entries" related list lists "Organic Skincare Set"
    Then the "Price Book Entries" related list on the "Golden Members" price book should show "Organic Skincare Set" with List Price "$80.00"
    And I click the "App Launcher" button
    And I click the "Price Books" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Price Books is ready
    And I click the "Silver Members" link in the Price Books list
    And I wait until the Price Book record page for "Silver Members" opens
    And I open the "Related" tab on the Price Book record page
    And the "Price Book Entries" related list on the "Silver Members" price book should show "Organic Skincare Set" with List Price "$100.00"
