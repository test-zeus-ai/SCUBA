Feature: SCUBA benchmark case admin_022_001 - Assign MarketingAnalyticsUser to Foo Bar

  # Original request: Could you go ahead and grant Foo Bar the MarketingAnalyticsUser permission set group?

  Scenario: Administrator assigns the "MarketingAnalyticsUser" permission set group to Foo Bar
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I search for "Users" in the "Quick Find" search field
    And I click the "Users" link under "Users" in the Setup sidebar
    And I wait until the "All Users" list is ready
    And I click the "Foo Bar" full name link in the "All Users" list
    And I wait until the "Foo Bar" user detail page is ready
    And I click the "Permission Set Group Assignments" link on the "Foo Bar" user detail page
    And I click the "Edit Assignments" button in the "Permission Set Group Assignments" section
    And I wait until the permission set group assignment page shows "Available Permission Set Groups"
    And I move "MarketingAnalyticsUser" from "Available Permission Set Groups" to "Enabled Permission Set Groups"
    And I click the "Save" button on the permission set group assignment page
    And I wait until the "Foo Bar" user detail page is ready
    Then the "Permission Set Group Assignments" section for "Foo Bar" should list "MarketingAnalyticsUser"
