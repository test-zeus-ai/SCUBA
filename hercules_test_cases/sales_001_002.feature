Feature: SCUBA benchmark case sales_001_002 - Create the Next Horizon Technologies account and its point of contact

  # Original request: Quick follow-up from my chat with Sarah Kim (Director of Operations) at Next Horizon Technologies—definite potential here. Please: - Create an account for Next Horizon Technologies - Set Jordan Lee as the point of contact - Mobile: 777-444-1111

  Scenario: Sales user creates the Next Horizon Technologies account with Jordan Lee as its contact
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Accounts" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Accounts is ready
    And I click the "New" button on the Accounts list
    And I wait until the "New Account" modal is ready
    And I fill "Next Horizon Technologies" in the "Account Name" text field
    And I click the "Save" button in the "New Account" modal
    And I wait until the Account record page for "Next Horizon Technologies" opens
    And I click the "App Launcher" button
    And I click the "Contacts" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Contacts is ready
    And I click the "New" button on the Contacts list
    And I wait until the "New Contact" modal is ready
    And I fill "Jordan" in the "First Name" text field in the "New Contact" modal
    And I fill "Lee" in the "Last Name" text field in the "New Contact" modal
    And I search for "Next Horizon Technologies" in the "Account Name" lookup
    And I select the exact matching account "Next Horizon Technologies"
    And I wait until the "Account Name" lookup shows "Next Horizon Technologies"
    And I fill "777-444-1111" in the "Mobile" text field in the "New Contact" modal
    And I click the "Save" button in the "New Contact" modal
    And I wait until the Contact record page for "Jordan Lee" opens
    Then the Contact record page should show "Jordan Lee" with Account Name "Next Horizon Technologies", Mobile "777-444-1111"
