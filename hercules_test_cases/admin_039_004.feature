Feature: SCUBA benchmark case admin_039_004 - Which permission set group grants Delete on Account

  # Original request: From the existing permission set groups, which one grants Delete on the Account object? Choose only one from Product Admin, Commerce_Shopper, or Trainee Analyst, and answer with the precise name based on the org’s object settings.

  Scenario: Administrator finds which listed permission set group grants Delete on Account
    Given I am signed in to the Salesforce Lightning app
    When I read the PermissionSetGroup records named "Product Admin", "Commerce_Shopper" and "Trainee Analyst", with their Ids and names
    And I read the PermissionSet records that represent those permission set groups, with their Ids and PermissionSetGroupId
    And I read the ObjectPermissions records on the "Account" object for those permission set Ids, with ParentId and PermissionsDelete
    And I note that a listed group that does not exist, or has no Account ObjectPermissions record, grants no Delete on Account
    Then I answer with only the exact name of the one permission set group that grants Delete on Account
