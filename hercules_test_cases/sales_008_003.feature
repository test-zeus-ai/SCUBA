Feature: SCUBA benchmark case sales_008_003 - Create a quote with a discounted line item

  # Original request: Lots of buzz around the Smart Fitness Tracker. Draft a quote named "Fitness Promo" for the "IT Outsourcing" opportunity; have it expire 5 days from today. Final sales price should be list less 13.2%, and this rate should only qualify at a quantity of 35.
  # Interpretation: Expiration Date "5 days from today" <- "have it expire 5 days from today"
  # Interpretation: Discount "13.2" <- "list less 13.2%"
  # Interpretation: Quantity "35" <- "only qualify at a quantity of 35"

  Scenario: Sales user creates the Fitness Promo quote on the IT Outsourcing opportunity
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Quotes" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Quotes is ready
    And I click the "New Quote" button on the Quotes list
    And I wait until the "New Quote" modal is ready
    And I fill "Fitness Promo" in the "Quote Name" text field in the "New Quote" modal
    And I search for and select "IT Outsourcing" in the "Opportunity Name" lookup in the "New Quote" modal
    And I fill "5 days from today" in the "Expiration Date" date field in the "New Quote" modal
    And I click the "Save" button in the "New Quote" modal
    And I wait until the Quote record page for "Fitness Promo" opens
    And I open the "Related" tab on the Quote record page
    And I click the "Add Products" button in the "Quote Line Items" related list
    And I wait until the "Choose Price Book" dialog is ready
    And I click the "Save" button in the "Choose Price Book" dialog
    And I wait until the "Add Products" dialog is ready
    And I check the "Select item Smart Fitness Tracker" checkbox in the "Add Products" dialog
    And I click the "Next" button in the "Add Products" dialog
    And I wait until the "Edit Selected Quote Line Items" dialog is ready
    And I fill "35" in the "Quantity" field in the "Smart Fitness Tracker" row of the "Edit Selected Quote Line Items" dialog
    And I fill "13.2" in the "Discount" field in the "Smart Fitness Tracker" row of the "Edit Selected Quote Line Items" dialog
    And I click the "Save" button in the "Edit Selected Quote Line Items" dialog
    And I wait until the "Quote Line Items" related list lists "Smart Fitness Tracker"
    Then the "Quote Line Items" related list should show "Smart Fitness Tracker" with Quantity "35" and Discount "13.2%"
