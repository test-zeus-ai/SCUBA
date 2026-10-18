Feature: SCUBA benchmark case sales_008_005 - Create a quote with a discounted line item

  # Original request: The client is keen on the Titanium Pro Laptop. Prepare a "Bulk Sale" quote for the "Supply Chain Project" opportunity that’s valid for 1 month from today. Final sales price = list price minus 15%, and make this pricing contingent on buying 2 units.
  # Interpretation: Expiration Date "1 month from today" <- "valid for 1 month from today"
  # Interpretation: Discount "15" <- "list price minus 15%"
  # Interpretation: Quantity "2" <- "contingent on buying 2 units"

  Scenario: Sales user creates the Bulk Sale quote on the Supply Chain Project opportunity
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Opportunities" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Opportunities is ready
    And I search for "Supply Chain Project" in the "Search this list..." search field and press Enter
    And I click the "Supply Chain Project" link in the Opportunities list
    And I wait until the Opportunity record page for "Supply Chain Project" opens
    And I open the "Related" tab on the Opportunity record page
    And I click the "New Quote" button in the "Quotes" related list
    And I wait until the "New Quote" modal is ready
    And I fill "Bulk Sale" in the "Quote Name" text field in the "New Quote" modal
    And I fill "1 month from today" in the "Expiration Date" date field in the "New Quote" modal
    And I click the "Save" button in the "New Quote" modal
    And I wait until the "Quotes" related list lists "Bulk Sale"
    And I click the "Bulk Sale" link in the "Quotes" related list
    And I wait until the Quote record page for "Bulk Sale" opens
    And I open the "Related" tab on the Quote record page
    And I click the "Add Products" button in the "Quote Line Items" related list
    And I wait until the "Add Products" dialog is ready
    And I search for "Titanium Pro Laptop" in the "Search Products..." search field and press Enter
    And I check the checkbox in the "Titanium Pro Laptop" row of the "Add Products" dialog
    And I click the "Next" button in the "Add Products" dialog
    And I wait until the "Edit Selected Quote Line Items" dialog is ready
    And I fill "2" in the "Quantity" field in the "Titanium Pro Laptop" row of the "Edit Selected Quote Line Items" dialog
    And I fill "15" in the "Discount" field in the "Titanium Pro Laptop" row of the "Edit Selected Quote Line Items" dialog
    And I click the "Save" button in the "Edit Selected Quote Line Items" dialog
    And I wait until the "Quote Line Items" related list lists "Titanium Pro Laptop"
    Then the "Quote Line Items" related list should show "Titanium Pro Laptop" with Quantity "2" and Discount "15%"
