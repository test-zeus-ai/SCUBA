Feature: SCUBA benchmark case sales_007_003 - Create price books for a product

  # Original request: Do two things for the Smart Fitness Tracker: 1) create a price book called Fitness Promo with a $75 unit price, and 2) create another called Wellness Special with a $70 unit price. Ensure the specified product is added to each price book at those unit prices.

  Scenario: Sales operations creates price books for Smart Fitness Tracker
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Price Books" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Price Books is ready
    And I click the "New" button on the Price Books list
    And I wait until the "New Price Book" modal is ready
    And I fill "Fitness Promo" in the "Price Book Name" text field
    And I check the "Active" checkbox in the "New Price Book" modal
    And I click the "Save" button in the "New Price Book" modal
    And I wait until the Price Book record page for "Fitness Promo" opens
    And I open the "Related" tab on the Price Book record page
    And I click the "Add Products" button in the "Price Book Entries" related list
    And I wait until the "Add Products" dialog is ready
    And I check the "Select item Smart Fitness Tracker" checkbox in the "Add Products" dialog
    And I click the "Next" button in the "Add Products" dialog
    And I wait until the "Edit Selected Price Book Entries" dialog is ready
    And I fill "75" in the "List Price" field in the "Smart Fitness Tracker" row of the "Edit Selected Price Book Entries" dialog
    And I click the "Save" button in the "Edit Selected Price Book Entries" dialog
    And I wait until the "Price Book Entries" related list lists "Smart Fitness Tracker"
    And I click the "App Launcher" button
    And I click the "Price Books" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Price Books is ready
    And I click the "New" button on the Price Books list
    And I wait until the "New Price Book" modal is ready
    And I fill "Wellness Special" in the "Price Book Name" text field
    And I check the "Active" checkbox in the "New Price Book" modal
    And I click the "Save" button in the "New Price Book" modal
    And I wait until the Price Book record page for "Wellness Special" opens
    And I open the "Related" tab on the Price Book record page
    And I click the "Add Products" button in the "Price Book Entries" related list
    And I wait until the "Add Products" dialog is ready
    And I check the "Select item Smart Fitness Tracker" checkbox in the "Add Products" dialog
    And I click the "Next" button in the "Add Products" dialog
    And I wait until the "Edit Selected Price Book Entries" dialog is ready
    And I fill "70" in the "List Price" field in the "Smart Fitness Tracker" row of the "Edit Selected Price Book Entries" dialog
    And I click the "Save" button in the "Edit Selected Price Book Entries" dialog
    And I wait until the "Price Book Entries" related list lists "Smart Fitness Tracker"
    Then the "Price Book Entries" related list on the "Wellness Special" price book should show "Smart Fitness Tracker" with List Price "$70.00"
    And I click the "App Launcher" button
    And I click the "Price Books" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Price Books is ready
    And I click the "Fitness Promo" link in the Price Books list
    And I wait until the Price Book record page for "Fitness Promo" opens
    And I open the "Related" tab on the Price Book record page
    And the "Price Book Entries" related list on the "Fitness Promo" price book should show "Smart Fitness Tracker" with List Price "$75.00"
