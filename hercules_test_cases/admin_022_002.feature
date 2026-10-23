Feature: SCUBA benchmark case admin_022_002 - Assign Manufacturing Admin to Sample User

  # Original request: I need Sample User added to the Manufacturing Admin permission set group.

  Scenario: Administrator assigns the "Manufacturing Admin" permission set group to Sample User
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I search for "Users" in the "Quick Find" search field
    And I click the "Users" link under "Users" in the Setup sidebar
    And I wait until the "All Users" list is ready
    And I click the "Sample User" full name link in the "All Users" list
    And I wait until the "Sample User" user detail page is ready
    And I click the "Permission Set Group Assignments" link on the "Sample User" user detail page
    And I click the "Edit Assignments" button in the "Permission Set Group Assignments" section
    And I wait until the permission set group assignment page shows "Available Permission Set Groups"
    And I move "Manufacturing Admin" from "Available Permission Set Groups" to "Enabled Permission Set Groups"
    And I click the "Save" button on the permission set group assignment page
    And I wait until the "Sample User" user detail page is ready
    Then the "Permission Set Group Assignments" section for "Sample User" should list "Manufacturing Admin"
