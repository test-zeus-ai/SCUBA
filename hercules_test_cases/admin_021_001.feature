Feature: SCUBA benchmark case admin_021_001 - Mute Account Delete and Edit in MarketingAnalyticsUser

  # Original request: Jump into the MarketingAnalyticsUser permission set group and mute the Accounts object permissions for Delete and Edit. Also mute Edit access on the Annual Revenue field(s).
  # Interpretation: Muting permission set label "MarketingAnalyticsUser Muting" <- "mute ... in the MarketingAnalyticsUser permission set group" (a group needs a muting permission set before anything can be muted)
  # Interpretation: Object "Accounts" <- "the Accounts object permissions"

  Scenario: Administrator mutes Account and Annual Revenue permissions in the MarketingAnalyticsUser group
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I search for "Permission Set Groups" in the "Quick Find" search field
    And I click the "Permission Set Groups" link in the Setup sidebar
    And I wait until the "Permission Set Groups" list is ready
    And I click the "MarketingAnalyticsUser" link in the Permission Set Groups list
    And I wait until the "MarketingAnalyticsUser" permission set group page is ready
    And I click the "Muting Permission Set in Group" link on the permission set group page
    And If no muting permission set exists, I click the "New" button and fill "MarketingAnalyticsUser Muting" in the "Label" field, then click "Save"
    And I wait until the muting permission set page is ready
    And I click the "Object Settings" link on the muting permission set page
    And I click the "Accounts" link in the Object Settings list
    And I click the "Edit" button on the Accounts object settings page
    And I check the "Delete" checkbox under "Object Permissions" on the Accounts object settings page
    And I check the "Edit" checkbox under "Object Permissions" on the Accounts object settings page
    And I check the "Edit Access" checkbox for "Annual Revenue" under "Field Permissions" on the Accounts object settings page
    And I click the "Save" button on the Accounts object settings page
    And I wait until the Accounts object settings page shows the saved permissions
    Then the muting permission set should show "Delete" and "Edit" muted for Accounts and "Edit Access" muted for "Annual Revenue"
