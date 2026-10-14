Feature: SCUBA benchmark case sales_004_001
  Original request: Please convert Frank Knight’s lead and mark it as 'Closed - Converted'. If his company already exists as an Account, link the conversion to that Account; if it doesn’t, create a new Account using the lead’s company name. Then create a new Opportunity named Knight LLC Opportunity.

  Scenario: Convert the lead Frank Knight and create the opportunity Knight LLC Opportunity
    Given the Salesforce Lightning app is open and I am signed in to the benchmark organization
    When I click the App Launcher, search for "Leads" and open the Leads tab
    And I search the list for "Frank Knight" and open the lead "Frank Knight"
    And I note the value of the lead's "Company" field
    And I click the "Convert" button on the lead record page
    And in the Convert Lead dialog Account section, if an existing Account whose name matches the lead's Company is offered, I choose "Choose Existing" and select that Account; otherwise I choose "Create New" and keep the Account Name equal to the lead's Company
    And in the Opportunity section I choose "Create New" and enter "Knight LLC Opportunity" as the Opportunity Name
    And I make sure "Don't create an opportunity upon conversion" is not checked
    And I select "Closed - Converted" in the "Converted Status" field
    And I click the "Convert" button in the dialog
    Then the conversion confirmation shows the lead "Frank Knight" was converted with an Account and the Opportunity "Knight LLC Opportunity"
    And Test Ended
