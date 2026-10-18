Feature: SCUBA benchmark case sales_008_003 - Create a quote with a discounted line item

  # Original request: Lots of buzz around the Smart Fitness Tracker. Draft a quote named "Fitness Promo" for the "IT Outsourcing" opportunity; have it expire 5 days from today. Final sales price should be list less 13.2%, and this rate should only qualify at a quantity of 35.
  # Interpretation: Expiration Date "5 days from today" <- "have it expire 5 days from today"
  # Interpretation: Discount "13.2" <- "list less 13.2%"
  # Interpretation: Quantity "35" <- "only qualify at a quantity of 35"

  Scenario: Sales user creates the Fitness Promo quote on the IT Outsourcing opportunity
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Opportunities" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Opportunities is ready
    And I search for "IT Outsourcing" in the "Search this list..." search field and press Enter
    And I click the "IT Outsourcing" link in the Opportunities list
    And I wait until the Opportunity record page for "IT Outsourcing" opens
    And I open the "Related" tab on the Opportunity record page
    And I click the "New Quote" button in the "Quotes" related list
    And I wait until the "New Quote" modal is ready
    And I fill "Fitness Promo" in the "Quote Name" text field in the "New Quote" modal
    And I fill "5 days from today" in the "Expiration Date" date field in the "New Quote" modal
    And I click the "Save" button in the "New Quote" modal
    And I wait until the "Quotes" related list lists "Fitness Promo"
    And I click the "Fitness Promo" link in the "Quotes" related list
    And I wait until the Quote record page for "Fitness Promo" opens
    And I open the "Related" tab on the Quote record page
    And I click the "Add Products" button in the "Quote Line Items" related list
    And I wait until the "Add Products" dialog is ready
    And I search for "Smart Fitness Tracker" in the "Search Products..." search field and press Enter
    And I check the checkbox in the "Smart Fitness Tracker" row of the "Add Products" dialog
    And I click the "Next" button in the "Add Products" dialog
    And I wait until the "Edit Selected Quote Line Items" dialog is ready
    And I fill "35" in the "Quantity" field in the "Smart Fitness Tracker" row of the "Edit Selected Quote Line Items" dialog
    And I fill "13.2" in the "Discount" field in the "Smart Fitness Tracker" row of the "Edit Selected Quote Line Items" dialog
    And I click the "Save" button in the "Edit Selected Quote Line Items" dialog
    And I wait until the "Quote Line Items" related list lists "Smart Fitness Tracker"
    Then the "Quote Line Items" related list should show "Smart Fitness Tracker" with Quantity "35" and Discount "13.2%"
