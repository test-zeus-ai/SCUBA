Feature: SCUBA benchmark case service_004_002 - Update the "Feature Request: Dark Mode Support" case

  # Original request: The case with Subject 'Feature Request: Dark Mode Support' requires specialized database expertise that exceeds my current skill level. I need to change its status to pending and SLA Violation to Yes.
  # Interpretation: Status "Pending" <- "change its status to pending"

  Scenario: Support agent updates the "Feature Request: Dark Mode Support" case
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Cases" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Cases is ready
    And I select "All Open Cases" from the "Select a List View: Cases" list view menu
    And I wait until the "All Open Cases" list view is ready
    And I search for "Feature Request: Dark Mode Support" in the "Search this list..." search field and press Enter
    And I click the case link whose Subject is "Feature Request: Dark Mode Support" in the Cases list
    And I wait until the Case record page for "Feature Request: Dark Mode Support" opens
    And I click the "Edit" button on the Case record page
    And I wait until the case edit form is ready
    And I select "Pending" from the "Status" picklist in the case edit form
    And I select "Yes" from the "SLA Violation" picklist in the case edit form
    And I click the "Save" button in the case edit form
    And I wait until the Case record page for "Feature Request: Dark Mode Support" shows the saved values
    Then the Case record page should show Status "Pending", SLA Violation "Yes"
