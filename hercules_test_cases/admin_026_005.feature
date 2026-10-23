Feature: SCUBA benchmark case admin_026_005 - Deactivate Alice Bob

  # Original request: Deactivate the account tied to the username "Alice Bob" so this user can no longer sign in.
  # Interpretation: User "Alice Bob" <- the full name shown in the All Users list

  Scenario: Administrator deactivates the user Alice Bob
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I search for "Users" in the "Quick Find" search field
    And I click the "Users" link under "Users" in the Setup sidebar
    And I wait until the "All Users" list is ready
    And I click the "Edit" action link in the "Alice Bob" row of the "All Users" list
    And I wait until the "Alice Bob" user edit page is ready
    And I uncheck the "Active" checkbox on the user edit page
    And If a dialog asks to confirm deactivating the user, I click its "OK" button
    And I click the "Save" button on the user edit page
    And I wait until the "Alice Bob" user detail page is ready
    Then the "Alice Bob" user detail page should show the user as not Active
