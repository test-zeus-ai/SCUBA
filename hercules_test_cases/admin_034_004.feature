Feature: SCUBA benchmark case admin_034_004 - Create the Sales Team public group

  # Original request: Do me a favor and create a Public Group named "Sales Team"; include Alice Bob (user), the "SVP, HR" role, and "Channel Sales Team" as members.
  # Interpretation: Member type "Role" for "Channel Sales Team" <- the request names it without a type

  Scenario: Administrator creates the "Sales Team" public group
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I search for "Public Groups" in the "Quick Find" search field
    And I click the "Public Groups" link in the Setup sidebar
    And I wait until the "Public Groups" page is ready
    And I click the "New" button on the "Public Groups" page
    And I wait until the public group edit page shows the "Label" field
    And I fill "Sales Team" in the "Label" text field on the public group edit page
    And I select "Users" from the "Search:" picklist in the "Members" section
    And I fill "Alice Bob" in the "for:" text field in the "Members" section
    And I click the "Find" button in the "Members" section
    And I move "User: Alice Bob" from the "Available Members" list to the "Selected Members" list on the public group edit page
    And I select "Roles" from the "Search:" picklist in the "Members" section
    And I fill "SVP, HR" in the "for:" text field in the "Members" section
    And I click the "Find" button in the "Members" section
    And I move "Role: SVP, HR" from the "Available Members" list to the "Selected Members" list on the public group edit page
    And I fill "Channel Sales Team" in the "for:" text field in the "Members" section
    And I click the "Find" button in the "Members" section
    And I move "Role: Channel Sales Team" from the "Available Members" list to the "Selected Members" list on the public group edit page
    And I click the "Save" button on the public group edit page
    And I wait until the "Sales Team" public group detail page is ready
    Then the "Sales Team" public group should list the members "Alice Bob", "SVP, HR", "Channel Sales Team"
