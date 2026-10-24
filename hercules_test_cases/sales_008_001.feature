Feature: SCUBA benchmark case sales_008_001 - Create a quote with a discounted line item

  # Original request: The prospect is really into ThermalMax Pro—please spin up a quote titled "Holiday Sale" on the "Product Development" opportunity. Set it to expire 10 days from today. Make the final sales price equal to list price minus 10%, and only honor that pricing when the quantity is 10.
  # Interpretation: Expiration Date "10 days from today" <- "Set it to expire 10 days from today"
  # Interpretation: Discount "10" <- "equal to list price minus 10%"
  # Interpretation: Quantity "10" <- "only honor that pricing when the quantity is 10"

  Scenario: Sales user creates the Holiday Sale quote on the Product Development opportunity
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Quotes" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Quotes is ready
    And I click the "New Quote" button on the Quotes list
    And I wait until the "New Quote" modal is ready
    And I fill "Holiday Sale" in the "Quote Name" text field in the "New Quote" modal
    And I search for and select "Product Development" in the "Opportunity Name" lookup in the "New Quote" modal
    And I fill "10 days from today" in the "Expiration Date" date field in the "New Quote" modal
    And I click the "Save" button in the "New Quote" modal
    And I wait until the Quote record page for "Holiday Sale" opens
    And I open the "Related" tab on the Quote record page
    And I click the "Add Products" button in the "Quote Line Items" related list
    And I wait until the "Choose Price Book" dialog is ready
    And I search for and select "Standard Price Book" in the "Price Book" lookup in the "Choose Price Book" dialog
    And I click the "Save" button in the "Choose Price Book" dialog
    And I wait until the "Add Products" dialog is ready
    And I check the "Select item ThermalMax Pro" checkbox in the "Add Products" dialog
    And I click the "Next" button in the "Add Products" dialog
    And I wait until the "Edit Selected Quote Line Items" dialog is ready
    And I fill "10" in the "Quantity" field in the "ThermalMax Pro" row of the "Edit Selected Quote Line Items" dialog
    And I fill "10" in the "Discount" field in the "ThermalMax Pro" row of the "Edit Selected Quote Line Items" dialog
    And I click the "Save" button in the "Edit Selected Quote Line Items" dialog
    And I wait until the "Quote Line Items" related list lists "ThermalMax Pro"
    Then the "Quote Line Items" related list should show "ThermalMax Pro" with Quantity "10" and Discount "10%"
