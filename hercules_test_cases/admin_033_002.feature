Feature: SCUBA benchmark case admin_033_002 - Update the org password policies

  # Original request: Tighten our password policy: require passwords to include at least one number plus both uppercase and lowercase letters, and cap failed login attempts at 5 before lockout.
  # Interpretation: Password complexity "Must include numbers and uppercase and lowercase letters" <- "at least one number plus both uppercase and lowercase letters"

  Scenario: Administrator updates the org-wide password policies
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I search for "Password Policies" in the "Quick Find" search field
    And I click the "Password Policies" link in the Setup sidebar
    And I wait until the "Password Policies" page is ready
    And I select "Must include numbers and uppercase and lowercase letters" from the "Password complexity requirement" picklist on the "Password Policies" page
    And I select "5" from the "Maximum invalid login attempts" picklist on the "Password Policies" page
    And I click the "Save" button on the "Password Policies" page
    And I wait until the "Password Policies" page shows the saved settings
    Then the "Password Policies" page should show Password complexity requirement "Must include numbers and uppercase and lowercase letters", Maximum invalid login attempts "5"
