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
    And I click the "Related" tab on the Incident record page
    And I scroll until the "Related Assets or Products" related list header and its "New" button are in view
    And I click the "New" button in the "Related Assets or Products" related list header
    And I wait until the new related asset or product form shows the "Product" lookup
    And I search for "DataFlow X2" in the "Product" lookup
    And I select the exact matching product "DataFlow X2"
    And I wait until the "Product" lookup shows "DataFlow X2"
    And I select "Not Business-Blocking" from the "Impact Type" picklist in the new related asset or product form
    And I click the "Save" button in the new related asset or product form
    And I wait until the Incident record page is shown again
    And I click the "Related" tab on the Incident record page
    And I scroll until the "Related Assets or Products" related list header and its "New" button are in view
    And I click the "New" button in the "Related Assets or Products" related list header
    And I wait until the new related asset or product form shows the "Product" lookup
    And I search for "ProcessEngine Max" in the "Product" lookup
    And I select the exact matching product "ProcessEngine Max"
    And I wait until the "Product" lookup shows "ProcessEngine Max"
    And I select "Not Business-Blocking" from the "Impact Type" picklist in the new related asset or product form
    And I click the "Save" button in the new related asset or product form
    And I wait until the Incident record page is shown again
    Then the Incident record page should show Subject "performance degradation in workflow systems", Impact "Low", Urgency "Low" and Priority "Low"
    And the "Related Assets or Products" related list should show "DataFlow X2" with Impact Type "Not Business-Blocking" and "ProcessEngine Max" with Impact Type "Not Business-Blocking"
