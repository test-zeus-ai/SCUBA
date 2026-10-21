Feature: SCUBA benchmark case service_004_003 - Update the "Payment Processing Error" case

  # Original request: The 'Payment Processing Error' case has security compliance implications that call for a security specialist. Please update it to status Working and turn Potential Liability to Yes.

  Scenario: Support agent updates the "Payment Processing Error" case
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Cases" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Cases is ready
    And I select "All Open Cases" from the "Select a List View: Cases" list view menu
    And I wait until the "All Open Cases" list view is ready
    And I search for "Payment Processing Error" in the "Search this list..." search field and press Enter
    And I click the case link whose Subject is "Payment Processing Error" in the Cases list
    And I wait until the Case record page for "Payment Processing Error" opens
    And I click the "Edit" button on the Case record page
    And I wait until the case edit form is ready
    And I select "Working" from the "Status" picklist in the case edit form
    And I select "Yes" from the "Potential Liability" picklist in the case edit form
    And I click the "Save" button in the case edit form
    And I wait until the Case record page for "Payment Processing Error" shows the saved values
    Then the Case record page should show Status "Working", Potential Liability "Yes"
