Feature: SCUBA benchmark case service_004_004 - Update the "Data Synchronization Issue" case

  # Original request: Escalate the 'Data Synchronization Issue' case, as it’s a complex integration that should be reviewed by a senior developer, and bump the priority to High.
  # Interpretation: Status "Escalated" <- "Escalate the 'Data Synchronization Issue' case"

  Scenario: Support agent updates the "Data Synchronization Issue" case
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Cases" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Cases is ready
    And I select "All Open Cases" from the "Select a List View: Cases" list view menu
    And I wait until the "All Open Cases" list view is ready
    And I search for "Data Synchronization Issue" in the "Search this list..." search field and press Enter
    And I click the case link whose Subject is "Data Synchronization Issue" in the Cases list
    And I wait until the Case record page for "Data Synchronization Issue" opens
    And I click the "Edit" button on the Case record page
    And I wait until the case edit form is ready
    And I select "Escalated" from the "Status" picklist in the case edit form
    And I select "High" from the "Priority" picklist in the case edit form
    And I click the "Save" button in the case edit form
    And I wait until the Case record page for "Data Synchronization Issue" shows the saved values
    Then the Case record page should show Status "Escalated", Priority "High"
