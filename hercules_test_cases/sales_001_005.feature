Feature: SCUBA benchmark case sales_001_005 - Create the Global Manufacturing Corp account and its point of contact

  # Original request: After connecting with the leadership team at Global Manufacturing Corp at yesterday’s industry conference, I’m confident they’re a fit for our supply chain optimization solutions. Please create an account for Global Manufacturing Corp and set Michael Chen, VP of Operations, as the point of contact. He prefers calls at (555) 987-6543; if he’s unavailable, use m.chen@globalmanufacturing.com.
  # Interpretation: Phone "(555) 987-6543" <- "He prefers calls at (555) 987-6543"

  Scenario: Sales user creates the Global Manufacturing Corp account with Michael Chen as its contact
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Accounts" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Accounts is ready
    And I click the "New" button on the Accounts list
    And I wait until the "New Account" modal is ready
    And I fill "Global Manufacturing Corp" in the "Account Name" text field
    And I click the "Save" button in the "New Account" modal
    And I wait until the Account record page for "Global Manufacturing Corp" opens
    And I click the "App Launcher" button
    And I click the "Contacts" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Contacts is ready
    And I click the "New" button on the Contacts list
    And I wait until the "New Contact" modal is ready
    And I fill "Michael" in the "First Name" text field in the "New Contact" modal
    And I fill "Chen" in the "Last Name" text field in the "New Contact" modal
    And I search for "Global Manufacturing Corp" in the "Account Name" lookup
    And I select the exact matching account "Global Manufacturing Corp"
    And I wait until the "Account Name" lookup shows "Global Manufacturing Corp"
    And I fill "VP of Operations" in the "Title" text field in the "New Contact" modal
    And I fill "(555) 987-6543" in the "Phone" text field in the "New Contact" modal
    And I fill "m.chen@globalmanufacturing.com" in the "Email" text field in the "New Contact" modal
    And I click the "Save" button in the "New Contact" modal
    And I wait until the Contact record page for "Michael Chen" opens
    Then the Contact record page should show "Michael Chen" with Account Name "Global Manufacturing Corp", Title "VP of Operations", Phone "(555) 987-6543", Email "m.chen@globalmanufacturing.com"
