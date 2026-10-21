Feature: SCUBA benchmark case service_004_001 - Update the "Login Issues with Mobile Application" case

  # Original request: For the case titled 'Login Issues with Mobile Application'—since it falls under enterprise contract terms that need management sign-off—please switch the status to working and set Potential Liability to Yes.
  # Interpretation: Status "Working" <- "switch the status to working"

  Scenario: Support agent updates the "Login Issues with Mobile Application" case
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Cases" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Cases is ready
    And I click the "Select a List View: Cases" button
    And I click the "All Open Cases" option in the list view menu
    And I wait until the "All Open Cases" list view is ready
    And I search for "Login Issues with Mobile Application" in the "Search this list..." search field and press Enter
    And I click the case link whose Subject is "Login Issues with Mobile Application" in the Cases list
    And I wait until the Case record page for "Login Issues with Mobile Application" opens
    And I click the "Edit" button on the Case record page
    And I wait until the case edit form is ready
    And I select "Working" from the "Status" picklist in the case edit form
    And I select "Yes" from the "Potential Liability" picklist in the case edit form
    And I click the "Save" button in the case edit form
    And I wait until the Case record page for "Login Issues with Mobile Application" shows the saved values
    Then the Case record page should show Status "Working", Potential Liability "Yes"
