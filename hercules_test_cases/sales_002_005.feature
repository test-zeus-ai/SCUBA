Feature: SCUBA benchmark case sales_002_005
  Original request: MegaCorp Financial acquired two specialized firms: DataSecure Solutions (cybersecurity) and GreenTech Innovations (renewable energy consulting). They want to maintain the acquired companies as separate divisions under the MegaCorp umbrella.. Create an account with name MegaCorp Financial - Parent and two subsidiary accounts DataSecure Solutions - Cybersecurity Division, GreenTech Innovations - Renewable Energy Division..

  Scenario: Create the MegaCorp Financial account hierarchy
    Given the Salesforce Lightning app is open and I am signed in to the benchmark organization
    When I click the App Launcher, search for "Accounts" and open the Accounts tab
    And I click the "New" button
    And I enter "MegaCorp Financial - Parent" in the "Account Name" field
    And I click "Save"
    And I return to the Accounts tab and click the "New" button
    And I enter "DataSecure Solutions - Cybersecurity Division" in the "Account Name" field
    And I search "MegaCorp Financial - Parent" in the "Parent Account" field and select it
    And I click "Save"
    And I return to the Accounts tab and click the "New" button
    And I enter "GreenTech Innovations - Renewable Energy Division" in the "Account Name" field
    And I search "MegaCorp Financial - Parent" in the "Parent Account" field and select it
    And I click "Save"
    Then the account "MegaCorp Financial - Parent" exists
    And the accounts "DataSecure Solutions - Cybersecurity Division" and "GreenTech Innovations - Renewable Energy Division" both show Parent Account "MegaCorp Financial - Parent"
    And Test Ended
