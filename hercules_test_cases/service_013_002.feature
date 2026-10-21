Feature: SCUBA benchmark case service_013_002 - Raise an incident

  # Original request: There are 12 new cases complaining about data corruption issues with the StorageMax Pro system, our primary data storage product. This is causing business blocking impact for customers' data operations. Create an incident record with the following details: Subject: data corruption in storage systems; Urgency: high; Impact: high; Priority: high.

  Scenario: Support agent raises the "data corruption in storage systems" incident
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Incidents" item in the App Launcher
    And I wait until the Incidents list view is ready
    And I click the "New" button on the Incidents list
    And I wait until the "New Incident" modal is ready
    And I fill "data corruption in storage systems" in the "Subject" text field in the "New Incident" modal
    And I fill "12 new cases report data corruption issues with the StorageMax Pro system, our primary data storage product. This is causing business blocking impact for customers' data operations." in the "Description" textarea in the "New Incident" modal
    And I select "High" from the "Impact" picklist in the "New Incident" modal
    And I select "High" from the "Urgency" picklist in the "New Incident" modal
    And I click the "Save" button in the "New Incident" modal
    And I wait until the Incident record page opens
    And I click the "Details" tab on the Incident record page
    And I click the "Edit Priority" button on the Incident record page
    And I select "High" from the "Priority" picklist on the Incident record page
    And I click the "Save" button on the Incident record page
    And I wait until the Incident record page shows Priority "High"
    Then the Incident record page should show Subject "data corruption in storage systems", Impact "High", Urgency "High" and Priority "High"
