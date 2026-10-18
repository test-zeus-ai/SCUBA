Feature: SCUBA benchmark case sales_007_005 - Create price books for a product

  # Original request: I’m implementing quantity-based pricing for the Titanium Pro Laptop—create two price books: Bulk Sale at $2,000 per unit and Starter Sale at $3,000 per unit. Include the specified product(s) in both price books at those unit prices.
  # Interpretation: List Price "2000" <- "Bulk Sale at $2,000 per unit"
  # Interpretation: List Price "3000" <- "Starter Sale at $3,000 per unit"

  Scenario: Sales operations creates price books for Titanium Pro Laptop
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Price Books" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Price Books is ready
    And I click the "New" button on the Price Books list
    And I wait until the "New Price Book" modal is ready
    And I fill "Bulk Sale" in the "Price Book Name" text field
    And I ensure the "Active" checkbox is checked
    And I click the "Save" button in the "New Price Book" modal
    And I wait until the Price Book record page for "Bulk Sale" opens
    And I open the "Related" tab on the Price Book record page
    And I click the "Add Products" button in the "Price Book Entries" related list
    And I wait until the "Add Products" dialog is ready
    And I check the "Select item Titanium Pro Laptop" checkbox in the "Add Products" dialog
    And I click the "Next" button in the "Add Products" dialog
    And I wait until the "Edit Selected Price Book Entries" dialog is ready
    And I fill "2000" in the "List Price" field in the "Titanium Pro Laptop" row of the "Edit Selected Price Book Entries" dialog
    And I click the "Save" button in the "Edit Selected Price Book Entries" dialog
    And I wait until the "Price Book Entries" related list lists "Titanium Pro Laptop"
    And I click the "App Launcher" button
    And I click the "Price Books" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Price Books is ready
    And I click the "New" button on the Price Books list
    And I wait until the "New Price Book" modal is ready
    And I fill "Starter Sale" in the "Price Book Name" text field
    And I ensure the "Active" checkbox is checked
    And I click the "Save" button in the "New Price Book" modal
    And I wait until the Price Book record page for "Starter Sale" opens
    And I open the "Related" tab on the Price Book record page
    And I click the "Add Products" button in the "Price Book Entries" related list
    And I wait until the "Add Products" dialog is ready
    And I check the "Select item Titanium Pro Laptop" checkbox in the "Add Products" dialog
    And I click the "Next" button in the "Add Products" dialog
    And I wait until the "Edit Selected Price Book Entries" dialog is ready
    And I fill "3000" in the "List Price" field in the "Titanium Pro Laptop" row of the "Edit Selected Price Book Entries" dialog
    And I click the "Save" button in the "Edit Selected Price Book Entries" dialog
    And I wait until the "Price Book Entries" related list lists "Titanium Pro Laptop"
    Then the "Price Book Entries" related list on the "Starter Sale" price book should show "Titanium Pro Laptop" with List Price "$3,000.00"
    And I click the "App Launcher" button
    And I click the "Price Books" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Price Books is ready
    And I click the "Bulk Sale" link in the Price Books list
    And I wait until the Price Book record page for "Bulk Sale" opens
    And I open the "Related" tab on the Price Book record page
    And the "Price Book Entries" related list on the "Bulk Sale" price book should show "Titanium Pro Laptop" with List Price "$2,000.00"
