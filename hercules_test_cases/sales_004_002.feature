Feature: SCUBA benchmark case sales_004_002 - Convert a lead

  # Original request: Step 1: Convert Jane Smith’s lead so the status is Closed - Converted. Step 2: During conversion, attach it to the existing Account if her company matches; if there’s no match, create a new Account with the lead’s company name. Step 3: Create an Opportunity titled Tech Giants Opportunity.

  Scenario: Sales user converts the lead Jane Smith and creates the opportunity Tech Giants Opportunity
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I search for "Leads" in the "Search apps and items..." search field
    And I click the "Leads" link in the App Launcher
    And I wait until the "Recently Viewed" list view for Leads is ready
    And I search for "Jane Smith" in the "Search this list..." search field
    And I click the "Jane Smith" link in the Leads list
    And I wait until the Lead record page for "Jane Smith" opens
    START IF the "Convert" button is visible on the Lead record page
      When I click the "Convert" button on the Lead record page
    ELSE
      When I open the "Show more actions" menu on the Lead record page
      And I click "Convert" in that menu
    END IF
    And I wait until the "Convert Lead" modal is ready
    START IF the "Account" section of the "Convert Lead" modal lists an existing Account whose name matches the lead's Company
      When I select the option "Choose Existing" in the "Account" section
      And I select the existing Account whose name matches the lead's Company in the "Account" section
    ELSE
      When I select the option "Create New" in the "Account" section
      And I ensure the "Account Name" text field in the "Account" section contains the lead's Company
    END IF
    And I select the option "Create New" in the "Opportunity" section
    And I replace the value in the "Opportunity Name" text field in the "Opportunity" section with "Tech Giants Opportunity"
    And I ensure the "Don't create an opportunity upon conversion" checkbox is unchecked
    And I select "Closed - Converted" from the "Converted Status" picklist in the "Convert Lead" modal
    And I click the "Convert" button in the "Convert Lead" modal
    And I wait until the "Your lead has been converted" message is visible
    Then the "Your lead has been converted" message should list the Account and the Opportunity "Tech Giants Opportunity"
