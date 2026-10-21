Feature: SCUBA benchmark case service_013_005 - Raise an incident

  # Original request: Urgent request: there are 8 new cases of overheating on the ThermalMax Pro and CoolBreeze Elite systems—our latest HVAC line—and it’s blocking facility operations for customers. Raise an incident with—Subject: overheating defects in HVAC cooling systems; Urgency: high; Impact: high; Priority: high.

  Scenario: Support agent raises the "overheating defects in HVAC cooling systems" incident
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Incidents" item in the App Launcher
    And I wait until the Incidents list view is ready
    And I click the "New" button on the Incidents list
    And I wait until the "New Incident" modal is ready
    And I fill "overheating defects in HVAC cooling systems" in the "Subject" text field in the "New Incident" modal
    And I fill "8 new cases report overheating on the ThermalMax Pro and CoolBreeze Elite systems, our latest HVAC line, blocking facility operations for customers." in the "Description" textarea in the "New Incident" modal
    And I select "High" from the "Impact" picklist in the "New Incident" modal
    And I select "High" from the "Urgency" picklist in the "New Incident" modal
    And I click the "Save" button in the "New Incident" modal
    And I wait until the Incident record page opens
    And I click the "Details" tab on the Incident record page
    And I click the "Edit Priority" button on the Incident record page
    And I select "High" from the "Priority" picklist on the Incident record page
    And I click the "Save" button on the Incident record page
    And I wait until the Incident record page shows Priority "High"
    Then the Incident record page should show Subject "overheating defects in HVAC cooling systems", Impact "High", Urgency "High" and Priority "High"
