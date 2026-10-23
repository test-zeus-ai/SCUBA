Feature: SCUBA benchmark case admin_033_004 - Update the org password policies

  # Original request: Policy change request: set minimum password length to 15, force password change every 90 days, and history should keep the last 5 passwords.
  # Interpretation: Enforce password history "5 passwords remembered" <- "history should keep the last 5 passwords"

  Scenario: Administrator updates the org-wide password policies
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I search for "Password Policies" in the "Quick Find" search field
    And I click the "Password Policies" link in the Setup sidebar
    And I wait until the "Password Policies" page is ready
    And I select "15" from the "Minimum password length" picklist on the "Password Policies" page
    And I select "90 days" from the "User passwords expire in" picklist on the "Password Policies" page
    And I select "5 passwords remembered" from the "Enforce password history" picklist on the "Password Policies" page
    And I click the "Save" button on the "Password Policies" page
    And I wait until the "Password Policies" page shows the saved settings
    Then the "Password Policies" page should show Minimum password length "15", User passwords expire in "90 days", Enforce password history "5 passwords remembered"
