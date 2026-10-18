Feature: SCUBA benchmark case sales_009_002 - Create a contract and an order from it

  # Original request: On the Lee Services account, set up a contract with a 24‑month term starting on the next week. Once it’s in place, generate an order tied to that contract and have the order go live on three weeks after contract date.
  # Interpretation: Contract Start Date "7 days from today" <- "starting on the next week"
  # Interpretation: Contract Term (months) "24" <- "24‑month term"
  # Interpretation: Order Start Date "4 weeks from today" <- "have the order go live on three weeks after contract date"

  Scenario: Sales user creates a contract and an order for Lee Services
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Contracts" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Contracts is ready
    And I click the "New" button on the Contracts list
    And I wait until the "New Contract" modal is ready
    And I search for and select "Lee Services" in the "Account Name" lookup in the "New Contract" modal
    And I fill "7 days from today" in the "Contract Start Date" date field in the "New Contract" modal
    And I fill "24" in the "Contract Term (months)" field in the "New Contract" modal
    And I click the "Save" button in the "New Contract" modal
    And I wait until the Contract record page opens
    And I open the "Details" tab on the Contract record page
    And I save the value of the "Contract Number" field on the Contract record page to <temp_contract_number>
    And I click the "App Launcher" button
    And I click the "Orders" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Orders is ready
    And I click the "New Order" button on the Orders list
    And I wait until the "New Order" modal is ready
    And I search for and select "Lee Services" in the "Account Name" lookup in the "New Order" modal
    And I search for and select "<temp_contract_number>" in the "Contract Number" lookup in the "New Order" modal
    And I fill "4 weeks from today" in the "Order Start Date" date field in the "New Order" modal
    And I select "Draft" from the "Status" picklist in the "New Order" modal
    And I click the "Save" button in the "New Order" modal
    And I wait until the Order record page opens
    Then the Order record page should show Account Name "Lee Services" and Contract Number "<temp_contract_number>"
