Feature: SCUBA benchmark case sales_002_003 - Create two parent accounts and one subordinate

  # Original request: CyberLoom Inc. and Vertex Dynamics are expanding in different ways. CyberLoom has launched a new research center in Germany (CyberLoom Berlin), while Vertex Dynamics has not yet opened any new branches. Create two parent accounts: CyberLoom Inc. – HQ and Vertex Dynamics – Global, and add a subordinate account only under CyberLoom: CyberLoom Berlin – Germany.

  Scenario: Sales user creates the CyberLoom and Vertex Dynamics parent accounts and the CyberLoom Berlin subordinate
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Accounts" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Accounts is ready
    And I click the "New" button on the Accounts list
    And I wait until the "New Account" modal is ready
    And I fill "CyberLoom Inc. – HQ" in the "Account Name" text field
    And I click the "Save & New" button in the "New Account" modal
    And I wait until a new "New Account" modal is ready
    And I fill "CyberLoom Berlin – Germany" in the "Account Name" text field
    And I search for "CyberLoom Inc. – HQ" in the "Parent Account" lookup
    And I select the exact matching account "CyberLoom Inc. – HQ"
    And I wait until the "Parent Account" lookup shows "CyberLoom Inc. – HQ"
    And I click the "Save & New" button in the "New Account" modal
    And I wait until a new "New Account" modal is ready
    And I fill "Vertex Dynamics – Global" in the "Account Name" text field
    And I click the "Save" button in the "New Account" modal
    And I wait until the Account record page opens
    And I click the "App Launcher" button
    And I click the "Accounts" item in the App Launcher
    And I search for "CyberLoom Inc. – HQ" in the "Search this list..." search field and press Enter
    And I click the "CyberLoom Inc. – HQ" link in the Accounts list
    And I wait until the Account record page for "CyberLoom Inc. – HQ" opens
    And If the "View Account Hierarchy" button is visible on the Account record page, click it; else open the "Show more actions" menu on the Account record page
    And If the "Show more actions" menu is open, click "View Account Hierarchy" in that menu
    And I wait until the "Account Hierarchy" page is ready
    Then the "Account Hierarchy" should show "CyberLoom Berlin – Germany" directly under "CyberLoom Inc. – HQ"
