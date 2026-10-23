Feature: SCUBA benchmark case admin_035_004 - Update the role hierarchy

  # Original request: Set the role hierarchy chart so the Sales Manager reports to the Vice President of Sales, and the Vice President of Sales reports to the CEO.

  Scenario: Administrator updates the role hierarchy
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I search for "Roles" in the "Quick Find" search field
    And I click the "Roles" link under "Users" in the Setup sidebar
    And I wait until the "Roles" page is ready
    And If the "Roles" page shows "Set Up Roles", I click it
    And I click the "Show in list view" link on the "Roles" page
    And I click the "Edit" action link in the "Vice President of Sales" row of the "Roles" list view
    And I wait until the "Vice President of Sales" role edit page is ready
    And I fill "CEO" in the "This role reports to" lookup field on the role edit page
    And I click the "Save" button on the role edit page
    And I wait until the "Vice President of Sales" role detail page is ready
    And I click the "Roles" link under "Users" in the Setup sidebar
    And I click the "Show in list view" link on the "Roles" page
    And I click the "Edit" action link in the "Sales Manager" row of the "Roles" list view
    And I wait until the "Sales Manager" role edit page is ready
    And I fill "Vice President of Sales" in the "This role reports to" lookup field on the role edit page
    And I click the "Save" button on the role edit page
    And I wait until the "Sales Manager" role detail page is ready
    And I click the "Roles" link under "Users" in the Setup sidebar
    And I click the "Show in list view" link on the "Roles" page
    Then the "Roles" list view should show "Vice President of Sales" reporting to "CEO", "Sales Manager" reporting to "Vice President of Sales"
