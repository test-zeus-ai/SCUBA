Feature: SCUBA benchmark case sales_002_001 - Create an account hierarchy

  # Original request: The company LyLyApple opens two new sites in Asia (LyLyPear) and Europe (LyLyCherry). Create an account with the name LyLyApple – HQ and two subordinate accounts: LyLyPear – Asia and LyLyCherry – Europe.

  Scenario: Sales user creates the LyLyApple HQ account and its two subordinate accounts
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Accounts" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Accounts is ready
    And I click the "New" button on the Accounts list
    And I wait until the "New Account" modal is ready
    And I fill "LyLyApple – HQ" in the "Account Name" text field
    And I click the "Save & New" button in the "New Account" modal
    And I wait until a new "New Account" modal is ready
    And I fill "LyLyPear – Asia" in the "Account Name" text field
    And I search for "LyLyApple – HQ" in the "Parent Account" lookup
    And I select the exact matching account "LyLyApple – HQ"
    And I wait until the "Parent Account" lookup shows "LyLyApple – HQ"
    And I click the "Save & New" button in the "New Account" modal
    And I wait until a new "New Account" modal is ready
    And I fill "LyLyCherry – Europe" in the "Account Name" text field
    And I search for "LyLyApple – HQ" in the "Parent Account" lookup
    And I select the exact matching account "LyLyApple – HQ"
    And I wait until the "Parent Account" lookup shows "LyLyApple – HQ"
    And I click the "Save" button in the "New Account" modal
    And I wait until the Account record page opens
    And I click the "App Launcher" button
    And I click the "Accounts" item in the App Launcher
    And I search for "LyLyApple – HQ" in the "Search this list..." search field and press Enter
    And I click the "LyLyApple – HQ" link in the Accounts list
    And I wait until the Account record page for "LyLyApple – HQ" opens
    And If the "View Account Hierarchy" button is visible on the Account record page, click it; else open the "Show more actions" menu on the Account record page
    And If the "Show more actions" menu is open, click "View Account Hierarchy" in that menu
    And I wait until the "Account Hierarchy" page is ready
    Then the "Account Hierarchy" should show "LyLyPear – Asia" directly under "LyLyApple – HQ"
    And the "Account Hierarchy" should show "LyLyCherry – Europe" directly under "LyLyApple – HQ"
