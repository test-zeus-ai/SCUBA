Feature: SCUBA benchmark case sales_001_004 - Create the TechFlow Solutions account and its point of contact

  # Original request: Today’s call with TechFlow Solutions’ procurement team went great—they’re planning to scale their cloud infrastructure and line up well with our enterprise package. Please open a company account for TechFlow Solutions and list Sarah Mitchell (IT Director) as the POC. You can reach her at (555) 123-4567 or sarah.mitchell@techflowsolutions.com.
  # Interpretation: Phone "(555) 123-4567" <- "You can reach her at (555) 123-4567"

  Scenario: Sales user creates the TechFlow Solutions account with Sarah Mitchell as its contact
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Accounts" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Accounts is ready
    And I click the "New" button on the Accounts list
    And I wait until the "New Account" modal is ready
    And I fill "TechFlow Solutions" in the "Account Name" text field
    And I click the "Save" button in the "New Account" modal
    And I wait until the Account record page for "TechFlow Solutions" opens
    And I click the "App Launcher" button
    And I click the "Contacts" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Contacts is ready
    And I click the "New" button on the Contacts list
    And I wait until the "New Contact" modal is ready
    And I fill "Sarah" in the "First Name" text field in the "New Contact" modal
    And I fill "Mitchell" in the "Last Name" text field in the "New Contact" modal
    And I search for "TechFlow Solutions" in the "Account Name" lookup
    And I select the exact matching account "TechFlow Solutions"
    And I wait until the "Account Name" lookup shows "TechFlow Solutions"
    And I fill "IT Director" in the "Title" text field in the "New Contact" modal
    And I fill "(555) 123-4567" in the "Phone" text field in the "New Contact" modal
    And I fill "sarah.mitchell@techflowsolutions.com" in the "Email" text field in the "New Contact" modal
    And I click the "Save" button in the "New Contact" modal
    And I wait until the Contact record page for "Sarah Mitchell" opens
    Then the Contact record page should show "Sarah Mitchell" with Account Name "TechFlow Solutions", Title "IT Director", Phone "(555) 123-4567", Email "sarah.mitchell@techflowsolutions.com"
