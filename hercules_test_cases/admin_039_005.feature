Feature: SCUBA benchmark case admin_039_005 - Which object the Buyer permission set can delete

  # Original request: Inspect the Buyer permission set and compare its object permissions for the Account and Order Obejcts.Which one has the delete priviledge?  Answer the question with the precise object API Name.

  Scenario: Administrator compares the Buyer permission set on Account and Order
    Given I am signed in to the Salesforce org
    When I read the PermissionSet whose Label is exactly "Buyer", with its Id and Label
    And I read the ObjectPermissions records for that permission set Id on the "Account" and "Order" objects, with SobjectType and PermissionsDelete
    And I note that an object with no ObjectPermissions record for that permission set has no Delete
    Then I answer with only the API name of the object on which the "Buyer" permission set has Delete
