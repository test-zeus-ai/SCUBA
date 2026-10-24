Feature: SCUBA benchmark case sales_002_002 - Create two account hierarchies

  # Original request: Both NovaAxis Corp and TerraLink Systems have recently expanded their global footprint. NovaAxis has launched a new division in South Korea (NovaAxis Seoul), while TerraLink has opened a new site in Kenya (TerraLink Nairobi).. Create two separate parent accounts: NovaAxis Corp – Global and TerraLink Systems – HQ, and add one subordinate account under each: NovaAxis Seoul – South Korea and TerraLink Nairobi – Kenya..

  Scenario: Sales user creates the NovaAxis and TerraLink parent accounts with one subordinate each
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Accounts" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Accounts is ready
    And I click the "New" button on the Accounts list
    And I wait until the "New Account" modal is ready
    And I fill "NovaAxis Corp – Global" in the "Account Name" text field
    And I click the "Save & New" button in the "New Account" modal
    And I wait until a new "New Account" modal is ready
    And I fill "NovaAxis Seoul – South Korea" in the "Account Name" text field
    And I search for "NovaAxis Corp – Global" in the "Parent Account" lookup
    And I select the exact matching account "NovaAxis Corp – Global"
    And I wait until the "Parent Account" lookup shows "NovaAxis Corp – Global"
    And I click the "Save & New" button in the "New Account" modal
    And I wait until a new "New Account" modal is ready
    And I fill "TerraLink Systems – HQ" in the "Account Name" text field
    And I click the "Save & New" button in the "New Account" modal
    And I wait until a new "New Account" modal is ready
    And I fill "TerraLink Nairobi – Kenya" in the "Account Name" text field
    And I search for "TerraLink Systems – HQ" in the "Parent Account" lookup
    And I select the exact matching account "TerraLink Systems – HQ"
    And I wait until the "Parent Account" lookup shows "TerraLink Systems – HQ"
    And I click the "Save" button in the "New Account" modal
    And I wait until the Account record page opens
    And I click the "App Launcher" button
    And I click the "Accounts" item in the App Launcher
    And I search for "NovaAxis Corp – Global" in the "Search this list..." search field and press Enter
    And I click the "NovaAxis Corp – Global" link in the Accounts list
    And I wait until the Account record page for "NovaAxis Corp – Global" opens
    And If the "View Account Hierarchy" button is visible on the Account record page, click it; else open the "Show more actions" menu on the Account record page
    And If the "Show more actions" menu is open, click "View Account Hierarchy" in that menu
    And I wait until the "Account Hierarchy" page is ready
    Then the "Account Hierarchy" should show "NovaAxis Seoul – South Korea" directly under "NovaAxis Corp – Global"
    When I click the "App Launcher" button
    And I click the "Accounts" item in the App Launcher
    And I search for "TerraLink Systems – HQ" in the "Search this list..." search field and press Enter
    And I click the "TerraLink Systems – HQ" link in the Accounts list
    And I wait until the Account record page for "TerraLink Systems – HQ" opens
    And If the "View Account Hierarchy" button is visible on the Account record page, click it; else open the "Show more actions" menu on the Account record page
    And If the "Show more actions" menu is open, click "View Account Hierarchy" in that menu
    And I wait until the "Account Hierarchy" page is ready
    Then the "Account Hierarchy" should show "TerraLink Nairobi – Kenya" directly under "TerraLink Systems – HQ"
