Feature: SCUBA benchmark case admin_039_001 - Can the Account Access permission set delete Accounts

  # Original request: Based on the org’s object settings, if a user only has the “Account Access” permission set, can they delete any Account records? Reply with “yes” or “no” only.

  Scenario: Administrator checks whether the "Account Access" permission set can delete Account records
    Given I am signed in to the Salesforce org
    When I read the PermissionSet whose Label is exactly "Account Access", with its Id and Label
    And I read the ObjectPermissions record for that permission set Id on the "Account" object, with ParentId, SobjectType and PermissionsDelete
    And I note that no ObjectPermissions record for the "Account" object means the permission set grants no access to Account
    Then I answer with only "yes" if the "Account Access" permission set grants Delete on Account, otherwise "no"
