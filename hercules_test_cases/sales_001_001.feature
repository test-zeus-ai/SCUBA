Feature: SCUBA benchmark case sales_001_001 - Create the Old Balance account and its point of contact

  # Original request: I just met the Leo Luis, the VP from the Old Balance and there's a potential to start a business with this company. Help me to create an account for this company and the point of contact should be Marcus Roth, whose mobile number is 888-333-222 and email is marcus.roth@oldbalance.com

  Scenario: Sales user creates the Old Balance account with Marcus Roth as its contact
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Accounts" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Accounts is ready
    And I click the "New" button on the Accounts list
    And I wait until the "New Account" modal is ready
    And I fill "Old Balance" in the "Account Name" text field
    And I click the "Save" button in the "New Account" modal
    And I wait until the Account record page for "Old Balance" opens
    And I click the "App Launcher" button
    And I click the "Contacts" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Contacts is ready
    And I click the "New" button on the Contacts list
    And I wait until the "New Contact" modal is ready
    And I fill "Marcus" in the "First Name" text field in the "New Contact" modal
    And I fill "Roth" in the "Last Name" text field in the "New Contact" modal
    And I search for "Old Balance" in the "Account Name" lookup
    And I select the exact matching account "Old Balance"
    And I wait until the "Account Name" lookup shows "Old Balance"
    And I fill "888-333-222" in the "Mobile" text field in the "New Contact" modal
    And I fill "marcus.roth@oldbalance.com" in the "Email" text field in the "New Contact" modal
    And I click the "Save" button in the "New Contact" modal
    And I wait until the Contact record page for "Marcus Roth" opens
    Then the Contact record page should show "Marcus Roth" with Account Name "Old Balance", Mobile "888-333-222", Email "marcus.roth@oldbalance.com"
