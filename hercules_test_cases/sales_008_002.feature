Feature: SCUBA benchmark case sales_008_002 - Create a quote with a discounted line item

  # Original request: The customer’s excited about CoolBreeze Elite. Could you create a "Summer Special" quote tied to the "Maintenance Contract" opportunity that expires one week from today? Set the final sales price by taking 3.5% off the list price, with the discount applicable only if they order 14 units.
  # Interpretation: Expiration Date "1 week from today" <- "expires one week from today"
  # Interpretation: Discount "3.5" <- "taking 3.5% off the list price"
  # Interpretation: Quantity "14" <- "only if they order 14 units"

  Scenario: Sales user creates the Summer Special quote on the Maintenance Contract opportunity
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Quotes" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Quotes is ready
    And I click the "New Quote" button on the Quotes list
    And I wait until the "New Quote" modal is ready
    And I fill "Summer Special" in the "Quote Name" text field in the "New Quote" modal
    And I search for and select "Maintenance Contract" in the "Opportunity Name" lookup in the "New Quote" modal
    And I fill "1 week from today" in the "Expiration Date" date field in the "New Quote" modal
    And I click the "Save" button in the "New Quote" modal
    And I wait until the Quote record page for "Summer Special" opens
    And I open the "Related" tab on the Quote record page
    And I click the "Add Products" button in the "Quote Line Items" related list
    And I wait until the "Choose Price Book" dialog is ready
    And I click the "Save" button in the "Choose Price Book" dialog
    And I wait until the "Add Products" dialog is ready
    And I check the "Select item CoolBreeze Elite" checkbox in the "Add Products" dialog
    And I click the "Next" button in the "Add Products" dialog
    And I wait until the "Edit Selected Quote Line Items" dialog is ready
    And I fill "14" in the "Quantity" field in the "CoolBreeze Elite" row of the "Edit Selected Quote Line Items" dialog
    And I fill "3.5" in the "Discount" field in the "CoolBreeze Elite" row of the "Edit Selected Quote Line Items" dialog
    And I click the "Save" button in the "Edit Selected Quote Line Items" dialog
    And I wait until the "Quote Line Items" related list lists "CoolBreeze Elite"
    Then the "Quote Line Items" related list should show "CoolBreeze Elite" with Quantity "14" and Discount "3.5%"
