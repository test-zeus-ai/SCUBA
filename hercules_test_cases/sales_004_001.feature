Feature: SCUBA benchmark case sales_004_001 - Convert a lead

  # Original request: Please convert Frank Knight’s lead and mark it as 'Closed - Converted'. If his company already exists as an Account, link the conversion to that Account; if it doesn’t, create a new Account using the lead’s company name. Then create a new Opportunity named Knight LLC Opportunity.
  # Account choice: the Convert Lead modal pre-selects "Choose Existing Account" with the matching Account when the lead's company already exists, and otherwise "Create New Account" named after the lead's company, so the case keeps the modal's proposal.

  Scenario: Sales user converts the lead Frank Knight and creates the opportunity Knight LLC Opportunity
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Leads" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Leads is ready
    And I search for "Frank Knight" in the "Search this list..." search field and press Enter
    And I click the "Frank Knight" link in the Leads list
    And I wait until the Lead record page for "Frank Knight" opens
    And I click the "Show more actions" button on the Lead record page
    And I click "Convert" in the "Show more actions" menu
    And I wait until the "Convert Lead" modal is ready
    And I select the "Create New Opportunity" option in the "Opportunity" section
    And I replace the value in the "Opportunity Name" text field in the "Opportunity" section with "Knight LLC Opportunity"
    And I ensure the "Don't create an opportunity upon conversion" checkbox is unchecked
    And I select "Closed - Converted" from the "Converted Status" picklist in the "Convert Lead" modal
    And I click the "Convert" button in the "Convert Lead" modal
    And I wait until the "Your lead has been converted" message is visible
    Then the "Your lead has been converted" message should list the Account and the Opportunity "Knight LLC Opportunity"
