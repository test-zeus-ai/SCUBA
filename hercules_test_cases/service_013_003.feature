Feature: SCUBA benchmark case service_013_003 - Raise an incident

  # Original request: Heads up—there are 5 new cases about users failing to log in on SecureAuth Pro and AccessGuard, our authentication products. Customers say it’s partially business blocking for their security workflows. Create an incident with these details—Subject: authentication failures in security systems; Urgency: medium; Impact: medium; Priority: medium.
  # Interpretation: Priority "Moderate" <- "Priority: medium" (the Incident priority values are Critical, High, Moderate and Low)
  # Interpretation: Impact Type "Partially Business-Blocking" <- "it’s partially business blocking"

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
    And I click the "Related" tab on the Incident record page
    And I scroll until the "Related Assets or Products" related list header and its "New" button are in view
    And I click the "New" button in the "Related Assets or Products" related list header
    And I wait until the new related asset or product form shows the "Product" lookup
    And I search for "SecureAuth Pro" in the "Product" lookup
    And I select the exact matching product "SecureAuth Pro"
    And I wait until the "Product" lookup shows "SecureAuth Pro"
    And I select "Partially Business-Blocking" from the "Impact Type" picklist in the new related asset or product form
    And I click the "Save" button in the new related asset or product form
    And I wait until the Incident record page is shown again
    And I click the "Related" tab on the Incident record page
    And I scroll until the "Related Assets or Products" related list header and its "New" button are in view
    And I click the "New" button in the "Related Assets or Products" related list header
    And I wait until the new related asset or product form shows the "Product" lookup
    And I search for "AccessGuard" in the "Product" lookup
    And I select the exact matching product "AccessGuard"
    And I wait until the "Product" lookup shows "AccessGuard"
    And I select "Partially Business-Blocking" from the "Impact Type" picklist in the new related asset or product form
    And I click the "Save" button in the new related asset or product form
    And I wait until the Incident record page is shown again
    Then the Incident record page should show Subject "authentication failures in security systems", Impact "Medium", Urgency "Medium" and Priority "Moderate"
    And the "Related Assets or Products" related list should show "SecureAuth Pro" with Impact Type "Partially Business-Blocking" and "AccessGuard" with Impact Type "Partially Business-Blocking"
