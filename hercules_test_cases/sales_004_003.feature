Feature: SCUBA benchmark case sales_004_003 - Convert a lead

  # Original request: Convert the lead for Alice Johnson to 'Closed - Converted'. If the company on her lead corresponds to an existing Account, select that Account; otherwise, create a new Account named exactly as the lead’s company. After that, set up a new Opportunity called Innovate Ltd Opportunity.
  # Account choice: the Convert Lead modal pre-selects "Choose Existing Account" with the matching Account when the lead's company already exists, and otherwise "Create New Account" named after the lead's company, so the case keeps the modal's proposal.

  Scenario: Sales user converts the lead Alice Johnson and creates the opportunity Innovate Ltd Opportunity
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Leads" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Leads is ready
    And I search for "Alice Johnson" in the "Search this list..." search field and press Enter
    And I click the "Alice Johnson" link in the Leads list
    And I wait until the Lead record page for "Alice Johnson" opens
    And I click the "Show more actions" button on the Lead record page
    And I click "Convert" in the "Show more actions" menu
    And I wait until the "Convert Lead" modal is ready
    And I select the "Create New Opportunity" option in the "Opportunity" section
    And I replace the value in the "Opportunity Name" text field in the "Opportunity" section with "Innovate Ltd Opportunity"
    And I ensure the "Don't create an opportunity upon conversion" checkbox is unchecked
    And I select "Closed - Converted" from the "Converted Status" picklist in the "Convert Lead" modal
    And I click the "Convert" button in the "Convert Lead" modal
    And I wait until the "Your lead has been converted" message is visible
    Then the "Your lead has been converted" message should list the Account and the Opportunity "Innovate Ltd Opportunity"
