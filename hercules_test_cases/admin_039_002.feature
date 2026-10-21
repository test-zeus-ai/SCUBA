Feature: SCUBA benchmark case admin_039_002 - Which permission set lacks Edit on Case

  # Original request: The Case Object is associated with multiple permission sets. Among the [Agentforce Service Agent Secure Base, C360 High Scale Flow Integration User, Cases Admin, and ConnectivityServiceCASCPermSet] permission sets, which one does not have the Edit priviledge? Grounded on the salesforce org's object settings, answer the question with the precise name.

  Scenario: Administrator finds which listed permission set has no Edit on Case
    Given I am signed in to the Salesforce org
    When I read the PermissionSet records labelled "Agentforce Service Agent Secure Base", "C360 High Scale Flow Integration User", "Cases Admin" and "ConnectivityServiceCASCPermSet", with their Ids and Labels
    And I read the ObjectPermissions records on the "Case" object for those permission set Ids, with ParentId, SobjectType and PermissionsEdit
    And I note that a permission set with no ObjectPermissions record for "Case" has no Edit on Case
    Then I answer with only the exact name of the one permission set that does not have Edit on Case
