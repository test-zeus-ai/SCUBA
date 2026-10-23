Feature: SCUBA benchmark case admin_023_005 - Set MyVehicle organization-wide defaults

  # Original request: Please configure MyVehicle__c’s organization-wide defaults to Public Read/Write for internal users and Public Read Only for external users, and ensure access is still granted to users higher in the role hierarchy.
  # Interpretation: Sharing Settings row "MyVehicle" <- object MyVehicle__c
  # Interpretation: Grant Access Using Hierarchies checked <- users higher in the role hierarchy keep access

  Scenario: Administrator sets the MyVehicle organization-wide defaults
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I search for "Sharing Settings" in the "Quick Find" search field
    And I click the "Sharing Settings" link in the Setup sidebar
    And I wait until the "Sharing Settings" page is ready
    And I click the "Edit" button in the "Organization-Wide Defaults" section
    And I wait until the "Organization-Wide Sharing Defaults Edit" page is ready
    And I select "Public Read/Write" from the "Default Internal Access" picklist in the "MyVehicle" row
    And I select "Public Read Only" from the "Default External Access" picklist in the "MyVehicle" row
    And I check the "Grant Access Using Hierarchies" checkbox in the "MyVehicle" row
    And I click the "Save" button on the "Organization-Wide Sharing Defaults Edit" page
    And If a confirmation dialog asks to confirm the sharing recalculation, I click its "OK" button
    And I wait until the "Sharing Settings" page is ready
    Then the "Organization-Wide Defaults" section should show "MyVehicle" with Default Internal Access "Public Read/Write", Default External Access "Public Read Only" and Grant Access Using Hierarchies checked
