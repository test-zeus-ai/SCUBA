Feature: SCUBA benchmark case sales_004_003
  Original request: Convert the lead for Alice Johnson to 'Closed - Converted'. If the company on her lead corresponds to an existing Account, select that Account; otherwise, create a new Account named exactly as the lead’s company. After that, set up a new Opportunity called Innovate Ltd Opportunity.

  Scenario: Convert the lead Alice Johnson and create the opportunity Innovate Ltd Opportunity
    Given the Salesforce Lightning app is open and I am signed in to the benchmark organization
    When I click the App Launcher, search for "Leads" and open the Leads tab
    And I search the list for "Alice Johnson" and open the lead "Alice Johnson"
    And I note the value of the lead's "Company" field
    And I click the "Convert" button on the lead record page
    And in the Convert Lead dialog Account section, if an existing Account whose name matches the lead's Company is offered, I choose "Choose Existing" and select that Account; otherwise I choose "Create New" and keep the Account Name equal to the lead's Company
    And in the Opportunity section I choose "Create New" and enter "Innovate Ltd Opportunity" as the Opportunity Name
    And I make sure "Don't create an opportunity upon conversion" is not checked
    And I select "Closed - Converted" in the "Converted Status" field
    And I click the "Convert" button in the dialog
    Then the conversion confirmation shows the lead "Alice Johnson" was converted with an Account and the Opportunity "Innovate Ltd Opportunity"
    And Test Ended
