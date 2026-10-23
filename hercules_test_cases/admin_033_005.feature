Feature: SCUBA benchmark case admin_033_005 - Update the org password policies

  # Original request: Update the org's password policies as follows: Minimum password length should be 10 characters, maximum invalid login attempts should be 5, lockout effective period should be 30 minutes.

  Scenario: Administrator updates the org-wide password policies
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I search for "Password Policies" in the "Quick Find" search field
    And I click the "Password Policies" link in the Setup sidebar
    And I wait until the "Password Policies" page is ready
    And I select "10" from the "Minimum password length" picklist on the "Password Policies" page
    And I select "5" from the "Maximum invalid login attempts" picklist on the "Password Policies" page
    And I select "30 minutes" from the "Lockout effective period" picklist on the "Password Policies" page
    And I click the "Save" button on the "Password Policies" page
    And I wait until the "Password Policies" page shows the saved settings
    Then the "Password Policies" page should show Minimum password length "10", Maximum invalid login attempts "5", Lockout effective period "30 minutes"
