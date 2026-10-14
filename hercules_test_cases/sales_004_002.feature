Feature: SCUBA benchmark case sales_004_002
  Original request: Step 1: Convert Jane Smith’s lead so the status is Closed - Converted. Step 2: During conversion, attach it to the existing Account if her company matches; if there’s no match, create a new Account with the lead’s company name. Step 3: Create an Opportunity titled Tech Giants Opportunity.

  Scenario: Convert the lead Jane Smith and create the opportunity Tech Giants Opportunity
    Given the Salesforce Lightning app is open and I am signed in to the benchmark organization
    When I click the App Launcher, search for "Leads" and open the Leads tab
    And I search the list for "Jane Smith" and open the lead "Jane Smith"
    And I note the value of the lead's "Company" field
    And I click the "Convert" button on the lead record page
    And in the Convert Lead dialog Account section, if an existing Account whose name matches the lead's Company is offered, I choose "Choose Existing" and select that Account; otherwise I choose "Create New" and keep the Account Name equal to the lead's Company
    And in the Opportunity section I choose "Create New" and enter "Tech Giants Opportunity" as the Opportunity Name
    And I make sure "Don't create an opportunity upon conversion" is not checked
    And I select "Closed - Converted" in the "Converted Status" field
    And I click the "Convert" button in the dialog
    Then the conversion confirmation shows the lead "Jane Smith" was converted with an Account and the Opportunity "Tech Giants Opportunity"
    And Test Ended
