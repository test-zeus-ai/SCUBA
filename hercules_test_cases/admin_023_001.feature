Feature: SCUBA benchmark case admin_023_001 - Set MyAnimal organization-wide defaults

  # Original request: For MyAnimal__c, tighten sharing: set the organization-wide defaults to Private for internal users and Private for external users, and make sure Grant Access Using Hierarchies is turned on.
  # Interpretation: Sharing Settings row "MyAnimal" <- object MyAnimal__c
  # Interpretation: Grant Access Using Hierarchies checked <- users higher in the role hierarchy keep access

  Scenario: Administrator sets the MyAnimal organization-wide defaults
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I search for "Sharing Settings" in the "Quick Find" search field
    And I click the "Sharing Settings" link in the Setup sidebar
    And I wait until the "Sharing Settings" page is ready
    And I click the "Edit" button in the "Organization-Wide Defaults" section
    And I wait until the "Organization-Wide Sharing Defaults Edit" page is ready
    And I select "Private" from the "Default Internal Access" picklist in the "MyAnimal" row
    And I select "Private" from the "Default External Access" picklist in the "MyAnimal" row
    And I check the "Grant Access Using Hierarchies" checkbox in the "MyAnimal" row
    And I click the "Save" button on the "Organization-Wide Sharing Defaults Edit" page
    And If a confirmation dialog asks to confirm the sharing recalculation, I click its "OK" button
    And I wait until the "Sharing Settings" page is ready
    Then the "Organization-Wide Defaults" section should show "MyAnimal" with Default Internal Access "Private", Default External Access "Private" and Grant Access Using Hierarchies checked
