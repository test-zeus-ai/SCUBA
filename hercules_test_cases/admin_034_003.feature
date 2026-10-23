Feature: SCUBA benchmark case admin_034_003 - Create the ProjectReviewers public group

  # Original request: Create a Public Group titled "ProjectReviewers" and make its members the "Project Lead" role and the "Director, Operations" role.

  Scenario: Administrator creates the "ProjectReviewers" public group
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I search for "Public Groups" in the "Quick Find" search field
    And I click the "Public Groups" link in the Setup sidebar
    And I wait until the "Public Groups" page is ready
    And I click the "New" button on the "Public Groups" page
    And I wait until the public group edit page shows the "Label" field
    And I fill "ProjectReviewers" in the "Label" text field on the public group edit page
    And I select "Roles" from the "Search:" picklist in the "Members" section
    And I fill "Project Lead" in the "for:" text field in the "Members" section
    And I click the "Find" button in the "Members" section
    And I move "Role: Project Lead" from the "Available Members" list to the "Selected Members" list on the public group edit page
    And I fill "Director, Operations" in the "for:" text field in the "Members" section
    And I click the "Find" button in the "Members" section
    And I move "Role: Director, Operations" from the "Available Members" list to the "Selected Members" list on the public group edit page
    And I click the "Save" button on the public group edit page
    And I wait until the "ProjectReviewers" public group detail page is ready
    Then the "ProjectReviewers" public group should list the members "Project Lead", "Director, Operations"
