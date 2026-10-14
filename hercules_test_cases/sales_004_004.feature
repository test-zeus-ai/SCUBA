Feature: SCUBA benchmark case sales_004_004
  Original request: For David Lee — complete the lead conversion (status should be 'Closed - Converted'). Account handling: if the lead’s company matches an existing Account, use it; if not, spin up a new Account using the company name from the lead. Then open an Opportunity named Lee Services Opportunity.

  Scenario: Convert the lead David Lee and create the opportunity Lee Services Opportunity
    Given the Salesforce Lightning app is open and I am signed in to the benchmark organization
    When I click the App Launcher, search for "Leads" and open the Leads tab
    And I search the list for "David Lee" and open the lead "David Lee"
    And I note the value of the lead's "Company" field
    And I click the "Convert" button on the lead record page
    And in the Convert Lead dialog Account section, if an existing Account whose name matches the lead's Company is offered, I choose "Choose Existing" and select that Account; otherwise I choose "Create New" and keep the Account Name equal to the lead's Company
    And in the Opportunity section I choose "Create New" and enter "Lee Services Opportunity" as the Opportunity Name
    And I make sure "Don't create an opportunity upon conversion" is not checked
    And I select "Closed - Converted" in the "Converted Status" field
    And I click the "Convert" button in the dialog
    Then the conversion confirmation shows the lead "David Lee" was converted with an Account and the Opportunity "Lee Services Opportunity"
    And Test Ended
