Feature: SCUBA benchmark case admin_019_002 - Create the Opportunity Access permission set

  # Original request: I need a Permission Set with these specs: - Label: Opportunity Access - License: None - Opportunity Object Permissions: Read, Edit. Read and Edit for every field
  # Interpretation: License "--None--" <- "license ... None"
  # Interpretation: Object Settings entry "Opportunities" <- the Opportunity object
  # Interpretation: Field permissions "Read Access" and "Edit Access" for every field <- "Read and Edit" access for all fields

  Scenario: Administrator creates the "Opportunity Access" permission set with Opportunity access
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I search for "Permission Sets" in the "Quick Find" search field
    And I click the "Permission Sets" link in the Setup sidebar
    And I wait until the "Permission Sets" page is ready
    And I click the "New" button on the "Permission Sets" page
    And I wait until the "Create" permission set page shows the "Label" field
    And I fill "Opportunity Access" in the "Label" text field on the permission set create page
    And I select "--None--" from the "License" picklist on the permission set create page
    And I click the "Save" button on the permission set create page
    And I wait until the "Opportunity Access" permission set overview page is ready
    And I click the "Object Settings" link on the "Opportunity Access" permission set overview page
    And I click the "Opportunities" link in the Object Settings list
    And I wait until the "Opportunities" object settings page is ready
    And I click the "Edit" button on the "Opportunities" object settings page
    And I check the "Read" checkbox under "Object Permissions" on the Opportunities object settings page
    And I check the "Edit" checkbox under "Object Permissions" on the Opportunities object settings page
    And I check the "Read Access" column header checkbox in the "Field Permissions" table so every field has Read Access
    And I check the "Edit Access" column header checkbox in the "Field Permissions" table so every field has Edit Access
    And I click the "Save" button on the "Opportunities" object settings page
    And I wait until the "Opportunities" object settings page shows the saved permissions
    Then the "Opportunity Access" permission set should grant Read, Edit on Opportunities and Read Access and Edit Access on every Opportunity field
