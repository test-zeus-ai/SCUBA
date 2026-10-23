Feature: SCUBA benchmark case admin_019_005 - Create the Cases Admin permission set

  # Original request: Please build a Permission Set called “Cases Admin.” Keep the license set to None. On the Case object, allow Read and Delete. Grant Read and Edit access across all fields.
  # Interpretation: License "--None--" <- "license ... None"
  # Interpretation: Object Settings entry "Cases" <- the Case object
  # Interpretation: Field permissions "Read Access" and "Edit Access" for every field <- "Read and Edit" access for all fields

  Scenario: Administrator creates the "Cases Admin" permission set with Case access
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I search for "Permission Sets" in the "Quick Find" search field
    And I click the "Permission Sets" link in the Setup sidebar
    And I wait until the "Permission Sets" page is ready
    And I click the "New" button on the "Permission Sets" page
    And I wait until the "Create" permission set page shows the "Label" field
    And I fill "Cases Admin" in the "Label" text field on the permission set create page
    And I select "--None--" from the "License" picklist on the permission set create page
    And I click the "Save" button on the permission set create page
    And I wait until the "Cases Admin" permission set overview page is ready
    And I click the "Object Settings" link on the "Cases Admin" permission set overview page
    And I click the "Cases" link in the Object Settings list
    And I wait until the "Cases" object settings page is ready
    And I click the "Edit" button on the "Cases" object settings page
    And I check the "Read" checkbox under "Object Permissions" on the Cases object settings page
    And I check the "Delete" checkbox under "Object Permissions" on the Cases object settings page
    And I check the "Read Access" column header checkbox in the "Field Permissions" table so every field has Read Access
    And I check the "Edit Access" column header checkbox in the "Field Permissions" table so every field has Edit Access
    And I click the "Save" button on the "Cases" object settings page
    And I wait until the "Cases" object settings page shows the saved permissions
    Then the "Cases Admin" permission set should grant Read, Delete on Cases and Read Access and Edit Access on every Case field
