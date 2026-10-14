Feature: SCUBA benchmark case sales_002_005 - Create an account hierarchy

  # Original request: MegaCorp Financial acquired two specialized firms: DataSecure Solutions (cybersecurity) and GreenTech Innovations (renewable energy consulting). They want to maintain the acquired companies as separate divisions under the MegaCorp umbrella.. Create an account with name MegaCorp Financial - Parent and two subsidiary accounts DataSecure Solutions - Cybersecurity Division, GreenTech Innovations - Renewable Energy Division..

  Scenario: Sales user creates the MegaCorp Financial parent account and its two subsidiary accounts
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I search for "Accounts" in the "Search apps and items..." search field
    And I click the "Accounts" link in the App Launcher
    And I wait until the "Recently Viewed" list view for Accounts is ready
    And I click the "New" button on the Accounts list
    And I wait until the "New Account" modal is ready
    And I fill "MegaCorp Financial - Parent" in the "Account Name" text field
    And I click the "Save & New" button in the "New Account" modal
    And I wait until a new "New Account" modal is ready
    And I fill "DataSecure Solutions - Cybersecurity Division" in the "Account Name" text field
    And I search for "MegaCorp Financial - Parent" in the "Parent Account" lookup
    And I select the exact matching account "MegaCorp Financial - Parent"
    And I wait until the "Parent Account" lookup shows "MegaCorp Financial - Parent"
    And I click the "Save & New" button in the "New Account" modal
    And I wait until a new "New Account" modal is ready
    And I fill "GreenTech Innovations - Renewable Energy Division" in the "Account Name" text field
    And I search for "MegaCorp Financial - Parent" in the "Parent Account" lookup
    And I select the exact matching account "MegaCorp Financial - Parent"
    And I wait until the "Parent Account" lookup shows "MegaCorp Financial - Parent"
    And I click the "Save" button in the "New Account" modal
    And I wait until the Account record page opens
    And I click the "App Launcher" button
    And I search for "Accounts" in the "Search apps and items..." search field
    And I click the "Accounts" link in the App Launcher
    And I search for "MegaCorp Financial - Parent" in the "Search this list..." search field
    And I click the "MegaCorp Financial - Parent" link in the Accounts list
    And I wait until the Account record page for "MegaCorp Financial - Parent" opens
    START IF the "View Account Hierarchy" button is visible on the Account record page
      When I click the "View Account Hierarchy" button on the Account record page
    ELSE
      When I open the "Show more actions" menu on the Account record page
      And I click "View Account Hierarchy" in that menu
    END IF
    And I wait until the "Account Hierarchy" page is ready
    Then the "Account Hierarchy" should show "DataSecure Solutions - Cybersecurity Division" directly under "MegaCorp Financial - Parent"
    And the "Account Hierarchy" should show "GreenTech Innovations - Renewable Energy Division" directly under "MegaCorp Financial - Parent"
