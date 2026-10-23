Feature: SCUBA benchmark case admin_026_003 - Deactivate Foo Bar

  # Original request: ASAP, mark the user with the username "Foo Bar" as inactive—deactivate that account.
  # Interpretation: User "Foo Bar" <- the full name shown in the All Users list

  Scenario: Administrator deactivates the user Foo Bar
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I search for "Users" in the "Quick Find" search field
    And I click the "Users" link under "Users" in the Setup sidebar
    And I wait until the "All Users" list is ready
    And I click the "Edit" action link in the "Foo Bar" row of the "All Users" list
    And I wait until the "Foo Bar" user edit page is ready
    And I uncheck the "Active" checkbox on the user edit page
    And If a dialog asks to confirm deactivating the user, I click its "OK" button
    And I click the "Save" button on the user edit page
    And I wait until the "Foo Bar" user detail page is ready
    Then the "Foo Bar" user detail page should show the user as not Active
