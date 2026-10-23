Feature: SCUBA benchmark case admin_034_001 - Create the Reviewer public group

  # Original request: Create a Public group with the name Reviewer. Configure the public group members by adding "Security" User and "CEO" role.

  Scenario: Administrator creates the "Reviewer" public group
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I search for "Public Groups" in the "Quick Find" search field
    And I click the "Public Groups" link in the Setup sidebar
    And I wait until the "Public Groups" page is ready
    And I click the "New" button on the "Public Groups" page
    And I wait until the public group edit page shows the "Label" field
    And I fill "Reviewer" in the "Label" text field on the public group edit page
    And I select "Users" from the "Search:" picklist in the "Members" section
    And I fill "Security" in the "for:" text field in the "Members" section
    And I click the "Find" button in the "Members" section
    And I move "User: Security" from the "Available Members" list to the "Selected Members" list on the public group edit page
    And I select "Roles" from the "Search:" picklist in the "Members" section
    And I fill "CEO" in the "for:" text field in the "Members" section
    And I click the "Find" button in the "Members" section
    And I move "Role: CEO" from the "Available Members" list to the "Selected Members" list on the public group edit page
    And I click the "Save" button on the public group edit page
    And I wait until the "Reviewer" public group detail page is ready
    Then the "Reviewer" public group should list the members "Security", "CEO"
