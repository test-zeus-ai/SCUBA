Feature: SCUBA benchmark case service_013_002 - Raise an incident

  # Original request: There are 12 new cases complaining about data corruption issues with the StorageMax Pro system, our primary data storage product. This is causing business blocking impact for customers' data operations. Create an incident record with the following details: Subject: data corruption in storage systems; Urgency: high; Impact: high; Priority: high.
  # Interpretation: Impact Type "Business-Blocking" <- "This is causing business blocking impact"

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
    And I click the "Related" tab on the Incident record page
    And I scroll until the "Related Assets or Products" related list header and its "New" button are in view
    And I click the "New" button in the "Related Assets or Products" related list header
    And I wait until the new related asset or product form shows the "Product" lookup
    And I search for "StorageMax Pro" in the "Product" lookup
    And I select the exact matching product "StorageMax Pro"
    And I wait until the "Product" lookup shows "StorageMax Pro"
    And I select "Business-Blocking" from the "Impact Type" picklist in the new related asset or product form
    And I click the "Save" button in the new related asset or product form
    And I wait until the Incident record page is shown again
    Then the Incident record page should show Subject "data corruption in storage systems", Impact "High", Urgency "High" and Priority "High"
    And the "Related Assets or Products" related list should show "StorageMax Pro" with Impact Type "Business-Blocking"
