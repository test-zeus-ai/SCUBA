Feature: SCUBA benchmark case admin_019_001 - Create the Account Access permission set

  # Original request: Please set up a new Permission Set named “Account Access.” Leave the license as None. On the Account object, grant object permissions for Read and Create. Also give Read and Edit access to all fields.
  # Interpretation: License "--None--" <- "license ... None"
  # Interpretation: Object Settings entry "Accounts" <- the Account object
  # Interpretation: Field permissions "Read Access" and "Edit Access" for every field <- "Read and Edit" access for all fields

  Scenario: Administrator creates the "Account Access" permission set with Account access
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I search for "Permission Sets" in the "Quick Find" search field
    And I click the "Permission Sets" link in the Setup sidebar
    And I wait until the "Permission Sets" page is ready
    And I click the "New" button on the "Permission Sets" page
    And I wait until the "Create" permission set page shows the "Label" field
    And I fill "Account Access" in the "Label" text field on the permission set create page
    And I select "--None--" from the "License" picklist on the permission set create page
    And I click the "Save" button on the permission set create page
    And I wait until the "Account Access" permission set overview page is ready
    And I click the "Object Settings" link on the "Account Access" permission set overview page
    And I click the "Accounts" link in the Object Settings list
    And I wait until the "Accounts" object settings page is ready
    And I click the "Edit" button on the "Accounts" object settings page
    And I check the "Read" checkbox under "Object Permissions" on the Accounts object settings page
    And I check the "Create" checkbox under "Object Permissions" on the Accounts object settings page
    And I check the "Read Access" column header checkbox in the "Field Permissions" table so every field has Read Access
    And I check the "Edit Access" column header checkbox in the "Field Permissions" table so every field has Edit Access
    And I click the "Save" button on the "Accounts" object settings page
    And I wait until the "Accounts" object settings page shows the saved permissions
    Then the "Account Access" permission set should grant Read, Create on Accounts and Read Access and Edit Access on every Account field
