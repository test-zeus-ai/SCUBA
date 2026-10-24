Feature: SCUBA benchmark case admin_039_003 - Which profile has the most limited Opportunity access

  # Original request: Grounded on the salesforce org's Opportunity object, which Profile has the most limited access. Choose one and reply with the exact name from the list [Custom: Sales Profile, Gold Partner User, Analytics Cloud Integration User].

  Scenario: Administrator compares Opportunity access for three profiles
    Given I am signed in to the Salesforce Lightning app
    When I read the Profile records named "Custom: Sales Profile", "Gold Partner User" and "Analytics Cloud Integration User", with their Ids and Names
    And I read the ObjectPermissions records on the "Opportunity" object for those profiles, with Parent.Profile.Name, PermissionsRead, PermissionsCreate, PermissionsEdit, PermissionsDelete, PermissionsViewAllRecords and PermissionsModifyAllRecords
    And I count the granted Opportunity permissions per profile, treating a profile with no record as having none
    Then I answer with only the exact name of the profile with the fewest Opportunity permissions
