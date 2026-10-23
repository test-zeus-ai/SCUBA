Feature: SCUBA benchmark case admin_034_002 - Create the Finance Team public group

  # Original request: Please set up a Public Group called "Finance Team" and populate it with: - "Auditor" (User) - "Accountant" (User) - "Controller" (User) - "CFO" (Role) - "Finance Manager" (Role)

  Scenario: Administrator creates the "Finance Team" public group
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I search for "Public Groups" in the "Quick Find" search field
    And I click the "Public Groups" link in the Setup sidebar
    And I wait until the "Public Groups" page is ready
    And I click the "New" button on the "Public Groups" page
    And I wait until the public group edit page shows the "Label" field
    And I fill "Finance Team" in the "Label" text field on the public group edit page
    And I select "Users" from the "Search:" picklist in the "Members" section
    And I fill "Auditor" in the "for:" text field in the "Members" section
    And I click the "Find" button in the "Members" section
    And I move "User: Auditor" from the "Available Members" list to the "Selected Members" list on the public group edit page
    And I fill "Accountant" in the "for:" text field in the "Members" section
    And I click the "Find" button in the "Members" section
    And I move "User: Accountant" from the "Available Members" list to the "Selected Members" list on the public group edit page
    And I fill "Controller" in the "for:" text field in the "Members" section
    And I click the "Find" button in the "Members" section
    And I move "User: Controller" from the "Available Members" list to the "Selected Members" list on the public group edit page
    And I select "Roles" from the "Search:" picklist in the "Members" section
    And I fill "CFO" in the "for:" text field in the "Members" section
    And I click the "Find" button in the "Members" section
    And I move "Role: CFO" from the "Available Members" list to the "Selected Members" list on the public group edit page
    And I fill "Finance Manager" in the "for:" text field in the "Members" section
    And I click the "Find" button in the "Members" section
    And I move "Role: Finance Manager" from the "Available Members" list to the "Selected Members" list on the public group edit page
    And I click the "Save" button on the public group edit page
    And I wait until the "Finance Team" public group detail page is ready
    Then the "Finance Team" public group should list the members "Auditor", "Accountant", "Controller", "CFO", "Finance Manager"
