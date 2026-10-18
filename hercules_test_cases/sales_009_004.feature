Feature: SCUBA benchmark case sales_009_004 - Create a contract and an order from it

  # Original request: Prepare a contract for the account Tech Giants. The start date is three weeks from today. The contract term is 12 months. Then create an order based on this contract. The order start date should be one day after the Contract start date.
  # Interpretation: Contract Start Date "3 weeks from today" <- "The start date is three weeks from today"
  # Interpretation: Contract Term (months) "12" <- "The contract term is 12 months"
  # Interpretation: Order Start Date "22 days from today" <- "one day after the Contract start date"

  Scenario: Sales user creates a contract and an order for Tech Giants
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Contracts" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Contracts is ready
    And I click the "New" button on the Contracts list
    And I wait until the "New Contract" modal is ready
    And I search for and select "Tech Giants" in the "Account Name" lookup in the "New Contract" modal
    And I fill "3 weeks from today" in the "Contract Start Date" date field in the "New Contract" modal
    And I fill "12" in the "Contract Term (months)" field in the "New Contract" modal
    And I click the "Save" button in the "New Contract" modal
    And I wait until the Contract record page opens
    And I save the "Contract Number" value from the current page to <temp_contract_number>
    And I click the "App Launcher" button
    And I click the "Orders" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Orders is ready
    And I click the "New Order" button on the Orders list
    And I wait until the "New Order" modal is ready
    And I search for and select "Tech Giants" in the "Account Name" lookup in the "New Order" modal
    And I search for and select "<temp_contract_number>" in the "Contract Number" lookup in the "New Order" modal
    And I fill "22 days from today" in the "Order Start Date" date field in the "New Order" modal
    And I select "Draft" from the "Status" picklist in the "New Order" modal
    And I click the "Save" button in the "New Order" modal
    And I wait until the Order record page opens
    Then the Order record page should show Account Name "Tech Giants" and Contract Number "<temp_contract_number>"
