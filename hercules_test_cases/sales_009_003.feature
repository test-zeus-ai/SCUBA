Feature: SCUBA benchmark case sales_009_003 - Create a contract and an order from it

  # Original request: For the Green Solutions account, please: 1) Create a contract that starts in 1 month from today. 2) Make the term 18 months. 3) From that contract, create an associated order that begins on 1 month after the contract start date.
  # Interpretation: Contract Start Date "1 month from today" <- "starts in 1 month from today"
  # Interpretation: Contract Term (months) "18" <- "Make the term 18 months"
  # Interpretation: Order Start Date "2 months from today" <- "begins on 1 month after the contract start date"

  Scenario: Sales user creates a contract and an order for Green Solutions
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Contracts" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Contracts is ready
    And I click the "New" button on the Contracts list
    And I wait until the "New Contract" modal is ready
    And I search for and select "Green Solutions" in the "Account Name" lookup in the "New Contract" modal
    And I fill "1 month from today" in the "Contract Start Date" date field in the "New Contract" modal
    And I fill "18" in the "Contract Term (months)" field in the "New Contract" modal
    And I click the "Save" button in the "New Contract" modal
    And I wait until the Contract record page opens
    And I open the "Related" tab on the Contract record page
    And I click the "New" button in the "Orders" related list
    And I wait until the "New Order" modal is ready
    And I fill "2 months from today" in the "Order Start Date" date field in the "New Order" modal
    And I select "Draft" from the "Status" picklist in the "New Order" modal
    And I click the "Save" button in the "New Order" modal
    And I wait until the Order record page opens
    Then the Order record page should show Account Name "Green Solutions" and a Contract Number
