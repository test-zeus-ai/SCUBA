Feature: SCUBA benchmark case admin_035_005 - Update the role hierarchy

  # Original request: Create a role named "Associate Sales Representative" and have it report to "SVP, Sales & Marketing". Also add two direct reports under it: "Sales Intern" and "Sales Trainee".

  Scenario: Administrator updates the role hierarchy
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I search for "Roles" in the "Quick Find" search field
    And I click the "Roles" link under "Users" in the Setup sidebar
    And I wait until the "Roles" page is ready
    And If the "Roles" page shows "Set Up Roles", I click it
    And I click the "Show in list view" link on the "Roles" page
    And I click the "New Role" button on the "Roles" list view
    And I wait until the role edit page shows the "Label" field
    And I fill "Associate Sales Representative" in the "Label" text field on the role edit page
    And I fill "SVP, Sales & Marketing" in the "This role reports to" lookup field on the role edit page
    And I click the "Save" button on the role edit page
    And I wait until the "Associate Sales Representative" role detail page is ready
    And I click the "Roles" link under "Users" in the Setup sidebar
    And I click the "Show in list view" link on the "Roles" page
    And I click the "New Role" button on the "Roles" list view
    And I wait until the role edit page shows the "Label" field
    And I fill "Sales Intern" in the "Label" text field on the role edit page
    And I fill "Associate Sales Representative" in the "This role reports to" lookup field on the role edit page
    And I click the "Save" button on the role edit page
    And I wait until the "Sales Intern" role detail page is ready
    And I click the "Roles" link under "Users" in the Setup sidebar
    And I click the "Show in list view" link on the "Roles" page
    And I click the "New Role" button on the "Roles" list view
    And I wait until the role edit page shows the "Label" field
    And I fill "Sales Trainee" in the "Label" text field on the role edit page
    And I fill "Associate Sales Representative" in the "This role reports to" lookup field on the role edit page
    And I click the "Save" button on the role edit page
    And I wait until the "Sales Trainee" role detail page is ready
    And I click the "Roles" link under "Users" in the Setup sidebar
    And I click the "Show in list view" link on the "Roles" page
    Then the "Roles" list view should show "Associate Sales Representative" reporting to "SVP, Sales & Marketing", "Sales Intern" reporting to "Associate Sales Representative", "Sales Trainee" reporting to "Associate Sales Representative"
