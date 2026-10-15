Feature: SCUBA benchmark case sales_004_004 - Convert a lead

  # Original request: For David Lee — complete the lead conversion (status should be 'Closed - Converted'). Account handling: if the lead’s company matches an existing Account, use it; if not, spin up a new Account using the company name from the lead. Then open an Opportunity named Lee Services Opportunity.
  # Account choice: the Convert Lead modal pre-selects "Choose Existing Account" with the matching Account when the lead's company already exists, and otherwise "Create New Account" named after the lead's company, so the case keeps the modal's proposal.

  Scenario: Sales user converts the lead David Lee and creates the opportunity Lee Services Opportunity
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Leads" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Leads is ready
    And I search for "David Lee" in the "Search this list..." search field and press Enter
    And I click the "David Lee" link in the Leads list
    And I wait until the Lead record page for "David Lee" opens
    And I click the "Show more actions" button on the Lead record page
    And I click "Convert" in the "Show more actions" menu
    And I wait until the "Convert Lead" modal is ready
    And I select the "Create New Opportunity" option in the "Opportunity" section
    And I replace the value in the "Opportunity Name" text field in the "Opportunity" section with "Lee Services Opportunity"
    And I ensure the "Don't create an opportunity upon conversion" checkbox is unchecked
    And I select "Closed - Converted" from the "Converted Status" picklist in the "Convert Lead" modal
    And I click the "Convert" button in the "Convert Lead" modal
    And I wait until the "Your lead has been converted" message is visible
    Then the "Your lead has been converted" message should list the Account and the Opportunity "Lee Services Opportunity"
