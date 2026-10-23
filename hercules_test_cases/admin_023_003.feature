Feature: SCUBA benchmark case admin_023_003 - Set Environment organization-wide defaults

  # Original request: Set the organization-wide defaults for the Environment__c object to Public Read/Write for internal users, Public Read Only for external users, and allow access for users higher in the role hierarchy.
  # Interpretation: Sharing Settings row "Environment" <- object Environment__c
  # Interpretation: Grant Access Using Hierarchies checked <- users higher in the role hierarchy keep access

  Scenario: Administrator sets the Environment organization-wide defaults
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I search for "Sharing Settings" in the "Quick Find" search field
    And I click the "Sharing Settings" link in the Setup sidebar
    And I wait until the "Sharing Settings" page is ready
    And I click the "Edit" button in the "Organization-Wide Defaults" section
    And I wait until the "Organization-Wide Sharing Defaults Edit" page is ready
    And I select "Public Read/Write" from the "Default Internal Access" picklist in the "Environment" row
    And I select "Public Read Only" from the "Default External Access" picklist in the "Environment" row
    And I check the "Grant Access Using Hierarchies" checkbox in the "Environment" row
    And I click the "Save" button on the "Organization-Wide Sharing Defaults Edit" page
    And If a confirmation dialog asks to confirm the sharing recalculation, I click its "OK" button
    And I wait until the "Sharing Settings" page is ready
    Then the "Organization-Wide Defaults" section should show "Environment" with Default Internal Access "Public Read/Write", Default External Access "Public Read Only" and Grant Access Using Hierarchies checked
