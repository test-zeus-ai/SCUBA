Feature: SCUBA benchmark case admin_022_004 - Assign SamplePermsetGroup to Sofia Bennett

  # Original request: Please provision Sofia Bennett with the SamplePermsetGroup permission set group.

  Scenario: Administrator assigns the "SamplePermsetGroup" permission set group to Sofia Bennett
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I search for "Users" in the "Quick Find" search field
    And I click the "Users" link under "Users" in the Setup sidebar
    And I wait until the "All Users" list is ready
    And I click the "Sofia Bennett" full name link in the "All Users" list
    And I wait until the "Sofia Bennett" user detail page is ready
    And I click the "Permission Set Group Assignments" link on the "Sofia Bennett" user detail page
    And I click the "Edit Assignments" button in the "Permission Set Group Assignments" section
    And I wait until the permission set group assignment page shows "Available Permission Set Groups"
    And I move "SamplePermsetGroup" from "Available Permission Set Groups" to "Enabled Permission Set Groups"
    And I click the "Save" button on the permission set group assignment page
    And I wait until the "Sofia Bennett" user detail page is ready
    Then the "Permission Set Group Assignments" section for "Sofia Bennett" should list "SamplePermsetGroup"
