Feature: SCUBA benchmark case service_013_003 - Raise an incident

  # Original request: Heads up—there are 5 new cases about users failing to log in on SecureAuth Pro and AccessGuard, our authentication products. Customers say it’s partially business blocking for their security workflows. Create an incident with these details—Subject: authentication failures in security systems; Urgency: medium; Impact: medium; Priority: medium.
  # Interpretation: Priority "Moderate" <- "Priority: medium" (the Incident priority values are Critical, High, Moderate and Low)

  Scenario: Support agent raises the "authentication failures in security systems" incident
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Incidents" item in the App Launcher
    And I wait until the Incidents list view is ready
    And I click the "New" button on the Incidents list
    And I wait until the "New Incident" modal is ready
    And I fill "authentication failures in security systems" in the "Subject" text field in the "New Incident" modal
    And I fill "5 new cases report users failing to log in on SecureAuth Pro and AccessGuard, our authentication products. Customers say it is partially business blocking for their security workflows." in the "Description" textarea in the "New Incident" modal
    And I select "Medium" from the "Impact" picklist in the "New Incident" modal
    And I select "Medium" from the "Urgency" picklist in the "New Incident" modal
    And I click the "Save" button in the "New Incident" modal
    And I wait until the Incident record page opens
    And I click the "Details" tab on the Incident record page
    And I click the "Edit Priority" button on the Incident record page
    And I select "Moderate" from the "Priority" picklist on the Incident record page
    And I click the "Save" button on the Incident record page
    And I wait until the Incident record page shows Priority "Moderate"
    Then the Incident record page should show Subject "authentication failures in security systems", Impact "Medium", Urgency "Medium" and Priority "Moderate"
