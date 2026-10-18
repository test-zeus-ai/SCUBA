Feature: SCUBA benchmark case sales_008_004 - Create a quote with a discounted line item

  # Original request: We’ve got strong interest in the Organic Skincare Set. Please issue a quote called "Silver Members" linked to the "Digital Marketing" opportunity, expiring 2 weeks from today. Set the final sales price by applying a 15.4% discount to the list price, and require a purchase quantity of 20 to qualify.
  # Interpretation: Expiration Date "2 weeks from today" <- "expiring 2 weeks from today"
  # Interpretation: Discount "15.4" <- "applying a 15.4% discount to the list price"
  # Interpretation: Quantity "20" <- "require a purchase quantity of 20 to qualify"

  Scenario: Sales user creates the Silver Members quote on the Digital Marketing opportunity
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Quotes" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Quotes is ready
    And I click the "New Quote" button on the Quotes list
    And I wait until the "New Quote" modal is ready
    And I fill "Silver Members" in the "Quote Name" text field in the "New Quote" modal
    And I search for and select "Digital Marketing" in the "Opportunity Name" lookup in the "New Quote" modal
    And I fill "2 weeks from today" in the "Expiration Date" date field in the "New Quote" modal
    And I click the "Save" button in the "New Quote" modal
    And I wait until the Quote record page for "Silver Members" opens
    And I open the "Related" tab on the Quote record page
    And I click the "Add Products" button in the "Quote Line Items" related list
    And I wait until the "Add Products" dialog is ready
    And I check the "Select item Organic Skincare Set" checkbox in the "Add Products" dialog
    And I click the "Next" button in the "Add Products" dialog
    And I wait until the "Edit Selected Quote Line Items" dialog is ready
    And I fill "20" in the "Quantity" field in the "Organic Skincare Set" row of the "Edit Selected Quote Line Items" dialog
    And I fill "15.4" in the "Discount" field in the "Organic Skincare Set" row of the "Edit Selected Quote Line Items" dialog
    And I click the "Save" button in the "Edit Selected Quote Line Items" dialog
    And I wait until the "Quote Line Items" related list lists "Organic Skincare Set"
    Then the "Quote Line Items" related list should show "Organic Skincare Set" with Quantity "20" and Discount "15.4%"
