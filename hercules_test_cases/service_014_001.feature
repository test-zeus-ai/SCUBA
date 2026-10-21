Feature: SCUBA benchmark case service_014_001 - Raise a change request for an incident

  # Original request: After an intensive investigation, the root cause for the incident 'authentication service outage affecting enterprise applications' is found. We need to create a change request with the following details. Subject: upgrade authentication infrastructure, Description: implement redundant authentication servers to prevent future service outages, Priority: High, Impact: Medium, Risk Level: Low. Link this change request to the incident case and update the incident status to in progress.
  # Interpretation: Incident Status "In Progress" <- "update the incident status to in progress"

  Scenario: Support agent raises the authentication infrastructure change request and links it to the incident
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Change Requests" item in the App Launcher
    And I wait until the Change Requests list view is ready
    And I click the "New" button on the Change Requests list
    And I wait until the "New Change Request" modal is ready
    And I fill "upgrade authentication infrastructure" in the "Subject" text field in the "New Change Request" modal
    And I fill "implement redundant authentication servers to prevent future service outages" in the "Description" textarea in the "New Change Request" modal
    And I select "High" from the "Priority" picklist in the "New Change Request" modal
    And I select "Medium" from the "Impact" picklist in the "New Change Request" modal
    And I select "Low" from the "Risk Level" picklist in the "New Change Request" modal
    And I click the "Save" button in the "New Change Request" modal
    And I wait until the Change Request record page opens
    And I click the "Related" tab on the Change Request record page
    And I click the "New" button in the "Related Issues" related list
    And I wait until the new related issue form is ready
    And I search for "authentication service outage affecting enterprise applications" in the incident lookup of the related issue form
    And I select the exact matching incident "authentication service outage affecting enterprise applications"
    And I click the "Save" button in the related issue form
    And I wait until the "Related Issues" related list shows "authentication service outage affecting enterprise applications"
    And I click the "authentication service outage affecting enterprise applications" link in the "Related Issues" related list
    And I wait until the Incident record page opens
    And I click the "Edit Status" button on the Incident record page
    And I select "In Progress" from the "Status" picklist on the Incident record page
    And I click the "Save" button on the Incident record page
    And I wait until the Incident record page shows Status "In Progress"
    Then the Incident record page should show Status "In Progress" and list the change request "upgrade authentication infrastructure"
