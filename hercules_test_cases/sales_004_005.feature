Feature: SCUBA benchmark case sales_004_005
  Original request: Help me wrap up Grace King’s lead: convert it and set the status to 'Closed - Converted'. If there’s an Account with the same company name, associate the lead to that; otherwise create a new Account using the lead’s company name. Finally, create a new Opportunity called King Innovations Opportunity.

  Scenario: Convert the lead Grace King and create the opportunity King Innovations Opportunity
    Given the Salesforce Lightning app is open and I am signed in to the benchmark organization
    When I click the App Launcher, search for "Leads" and open the Leads tab
    And I search the list for "Grace King" and open the lead "Grace King"
    And I note the value of the lead's "Company" field
    And I click the "Convert" button on the lead record page
    And in the Convert Lead dialog Account section, if an existing Account whose name matches the lead's Company is offered, I choose "Choose Existing" and select that Account; otherwise I choose "Create New" and keep the Account Name equal to the lead's Company
    And in the Opportunity section I choose "Create New" and enter "King Innovations Opportunity" as the Opportunity Name
    And I make sure "Don't create an opportunity upon conversion" is not checked
    And I select "Closed - Converted" in the "Converted Status" field
    And I click the "Convert" button in the dialog
    Then the conversion confirmation shows the lead "Grace King" was converted with an Account and the Opportunity "King Innovations Opportunity"
    And Test Ended
