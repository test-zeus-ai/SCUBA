Feature: SCUBA benchmark case sales_009_001 - Create a contract and an order from it

  # Original request: Could you take care of the Knight LLC account for me? Build a 12‑month contract that begins today. After that’s created, open an order from this contract and set its start date to be the next Friday after the contract’s start date.
  # Interpretation: Contract Term (months) "12" <- "12‑month contract"
  # Interpretation: Order Start Date "next Friday" <- "set its start date to be the next Friday after the contract’s start date"

  Scenario: Sales user creates a contract and an order for Knight LLC
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Contracts" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Contracts is ready
    And I click the "New" button on the Contracts list
    And I wait until the "New Contract" modal is ready
    And I search for and select "Knight LLC" in the "Account Name" lookup in the "New Contract" modal
    And I fill "today" in the "Contract Start Date" date field in the "New Contract" modal
    And I fill "12" in the "Contract Term (months)" field in the "New Contract" modal
    And I click the "Save" button in the "New Contract" modal
    And I wait until the Contract record page opens
    And I open the "Related" tab on the Contract record page
    And I click the "New" button in the "Orders" related list
    And I wait until the "New Order" modal is ready
    And I fill "next Friday" in the "Order Start Date" date field in the "New Order" modal
    And I select "Draft" from the "Status" picklist in the "New Order" modal
    And I click the "Save" button in the "New Order" modal
    And I wait until the Order record page opens
    Then the Order record page should show Account Name "Knight LLC" and a Contract Number
