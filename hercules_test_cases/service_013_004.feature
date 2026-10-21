Feature: SCUBA benchmark case service_013_004 - Raise an incident

  # Original request: Multiple customers have reported slow response times with the DataFlow X2 and ProcessEngine Max workflow systems, affecting their operational efficiency. This is causing not business blocking impact to both products as workarounds are available. Create an incident record with the following details: Subject: performance degradation in workflow systems; Urgency: low; Impact: low; Priority: low.

  Scenario: Support agent raises the "performance degradation in workflow systems" incident
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Incidents" item in the App Launcher
    And I wait until the Incidents list view is ready
    And I click the "New" button on the Incidents list
    And I wait until the "New Incident" modal is ready
    And I fill "performance degradation in workflow systems" in the "Subject" text field in the "New Incident" modal
    And I fill "Multiple customers report slow response times with the DataFlow X2 and ProcessEngine Max workflow systems, affecting their operational efficiency. Not business blocking for either product as workarounds are available." in the "Description" textarea in the "New Incident" modal
    And I select "Low" from the "Impact" picklist in the "New Incident" modal
    And I select "Low" from the "Urgency" picklist in the "New Incident" modal
    And I click the "Save" button in the "New Incident" modal
    And I wait until the Incident record page opens
    And I click the "Details" tab on the Incident record page
    And I click the "Edit Priority" button on the Incident record page
    And I select "Low" from the "Priority" picklist on the Incident record page
    And I click the "Save" button on the Incident record page
    And I wait until the Incident record page shows Priority "Low"
    Then the Incident record page should show Subject "performance degradation in workflow systems", Impact "Low", Urgency "Low" and Priority "Low"
