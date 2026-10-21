Feature: SCUBA benchmark case sales_001_003 - Create the GreenTrail Logistics account and its point of contact

  # Original request: Could you get GreenTrail Logistics set up in the CRM? I spoke with Daniel Ortiz (SVP of Partnerships) and there’s real upside. Make Emily Zhao the main point of contact and record her email as emily.zhao@greentrail.com.

  Scenario: Sales user creates the GreenTrail Logistics account with Emily Zhao as its contact
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Accounts" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Accounts is ready
    And I click the "New" button on the Accounts list
    And I wait until the "New Account" modal is ready
    And I fill "GreenTrail Logistics" in the "Account Name" text field
    And I click the "Save" button in the "New Account" modal
    And I wait until the Account record page for "GreenTrail Logistics" opens
    And I click the "App Launcher" button
    And I click the "Contacts" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Contacts is ready
    And I click the "New" button on the Contacts list
    And I wait until the "New Contact" modal is ready
    And I fill "Emily" in the "First Name" text field in the "New Contact" modal
    And I fill "Zhao" in the "Last Name" text field in the "New Contact" modal
    And I search for "GreenTrail Logistics" in the "Account Name" lookup
    And I select the exact matching account "GreenTrail Logistics"
    And I wait until the "Account Name" lookup shows "GreenTrail Logistics"
    And I fill "emily.zhao@greentrail.com" in the "Email" text field in the "New Contact" modal
    And I click the "Save" button in the "New Contact" modal
    And I wait until the Contact record page for "Emily Zhao" opens
    Then the Contact record page should show "Emily Zhao" with Account Name "GreenTrail Logistics", Email "emily.zhao@greentrail.com"
