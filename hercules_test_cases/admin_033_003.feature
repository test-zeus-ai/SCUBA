Feature: SCUBA benchmark case admin_033_003 - Update the org password policies

  # Original request: Let’s enforce stronger credentials—set the minimum password length to 12 characters and require a mix of letters, numbers, and special symbols.
  # Interpretation: Password complexity "Must include alpha, numeric, and special characters" <- "a mix of letters, numbers, and special symbols"

  Scenario: Administrator updates the org-wide password policies
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I search for "Password Policies" in the "Quick Find" search field
    And I click the "Password Policies" link in the Setup sidebar
    And I wait until the "Password Policies" page is ready
    And I select "12" from the "Minimum password length" picklist on the "Password Policies" page
    And I select "Must include alpha, numeric, and special characters" from the "Password complexity requirement" picklist on the "Password Policies" page
    And I click the "Save" button on the "Password Policies" page
    And I wait until the "Password Policies" page shows the saved settings
    Then the "Password Policies" page should show Minimum password length "12", Password complexity requirement "Must include alpha, numeric, and special characters"
