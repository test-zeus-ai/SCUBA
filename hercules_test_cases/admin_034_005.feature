Feature: SCUBA benchmark case admin_034_005 - Create the Marketing Team public group

  # Original request: New Public Group creation request: call it "Marketing Team" and add the users "Foo Bar" and "Sample User," plus the "VP International Sales" role.

  Scenario: Administrator creates the "Marketing Team" public group
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I search for "Public Groups" in the "Quick Find" search field
    And I click the "Public Groups" link in the Setup sidebar
    And I wait until the "Public Groups" page is ready
    And I click the "New" button on the "Public Groups" page
    And I wait until the public group edit page shows the "Label" field
    And I fill "Marketing Team" in the "Label" text field on the public group edit page
    And I select "Users" from the "Search:" picklist in the "Members" section
    And I fill "Foo Bar" in the "for:" text field in the "Members" section
    And I click the "Find" button in the "Members" section
    And I move "User: Foo Bar" from the "Available Members" list to the "Selected Members" list on the public group edit page
    And I fill "Sample User" in the "for:" text field in the "Members" section
    And I click the "Find" button in the "Members" section
    And I move "User: Sample User" from the "Available Members" list to the "Selected Members" list on the public group edit page
    And I select "Roles" from the "Search:" picklist in the "Members" section
    And I fill "VP International Sales" in the "for:" text field in the "Members" section
    And I click the "Find" button in the "Members" section
    And I move "Role: VP International Sales" from the "Available Members" list to the "Selected Members" list on the public group edit page
    And I click the "Save" button on the public group edit page
    And I wait until the "Marketing Team" public group detail page is ready
    Then the "Marketing Team" public group should list the members "Foo Bar", "Sample User", "VP International Sales"
