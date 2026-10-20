Feature: SCUBA benchmark case sales_002_004 - Create an account hierarchy

  # Original request: The company CloudWave Solutions opens two new sites in North America (CloudWave NA) and Australia (CloudWave AU).. Create an account with name CloudWave Solutions - HQ and two subordinates account CloudWave NA - North America, CloudWave AU - Australia..

  Scenario: Sales user creates the CloudWave Solutions HQ account and its two subordinate accounts
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Accounts" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Accounts is ready
    And I click the "New" button on the Accounts list
    And I wait until the "New Account" modal is ready
    And I fill "CloudWave Solutions - HQ" in the "Account Name" text field
    And I click the "Save & New" button in the "New Account" modal
    And I wait until a new "New Account" modal is ready
    And I fill "CloudWave NA - North America" in the "Account Name" text field
    And I search for "CloudWave Solutions - HQ" in the "Parent Account" lookup
    And I select the exact matching account "CloudWave Solutions - HQ"
    And I wait until the "Parent Account" lookup shows "CloudWave Solutions - HQ"
    And I click the "Save & New" button in the "New Account" modal
    And I wait until a new "New Account" modal is ready
    And I fill "CloudWave AU - Australia" in the "Account Name" text field
    And I search for "CloudWave Solutions - HQ" in the "Parent Account" lookup
    And I select the exact matching account "CloudWave Solutions - HQ"
    And I wait until the "Parent Account" lookup shows "CloudWave Solutions - HQ"
    And I click the "Save" button in the "New Account" modal
    And I wait until the Account record page opens
    And I click the "App Launcher" button
    And I click the "Accounts" item in the App Launcher
    And I search for "CloudWave Solutions - HQ" in the "Search this list..." search field and press Enter
    And I click the "CloudWave Solutions - HQ" link in the Accounts list
    And I wait until the Account record page for "CloudWave Solutions - HQ" opens
    And If the "View Account Hierarchy" button is visible on the Account record page, click it; else open the "Show more actions" menu on the Account record page
    And If the "Show more actions" menu is open, click "View Account Hierarchy" in that menu
    And I wait until the "Account Hierarchy" page is ready
    Then the "Account Hierarchy" should show "CloudWave NA - North America" directly under "CloudWave Solutions - HQ"
    And the "Account Hierarchy" should show "CloudWave AU - Australia" directly under "CloudWave Solutions - HQ"
