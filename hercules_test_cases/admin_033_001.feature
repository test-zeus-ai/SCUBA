Feature: SCUBA benchmark case admin_033_001 - Update the org password policies

  # Original request: Please tune the org-wide password settings so that passwords expire every 180 days, and make lockouts permanent.
  # Interpretation: Lockout effective period "Forever (must be reset by admin)" <- "make lockouts permanent"

  Scenario: Administrator updates the org-wide password policies
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I search for "Password Policies" in the "Quick Find" search field
    And I click the "Password Policies" link in the Setup sidebar
    And I wait until the "Password Policies" page is ready
    And I select "180 days" from the "User passwords expire in" picklist on the "Password Policies" page
    And I select "Forever (must be reset by admin)" from the "Lockout effective period" picklist on the "Password Policies" page
    And I click the "Save" button on the "Password Policies" page
    And I wait until the "Password Policies" page shows the saved settings
    Then the "Password Policies" page should show User passwords expire in "180 days", Lockout effective period "Forever (must be reset by admin)"
