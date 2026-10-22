Feature: SCUBA benchmark case service_013_001 - Raise an incident

  # Original request: Can you open an incident for widespread battery drain on our portable chargers? Multiple customers are seeing the PowerCell X1 and EnergyBoost Max losing charge quickly, disrupting daily operations. Note: PowerCell X1 is partially business blocking, while EnergyBoost Max isn’t blocking since some functions still work. Use these fields—Subject: battery performance degradation in portable charging devices; Urgency: medium; Impact: low; Priority: medium.
  # Interpretation: Priority "Moderate" <- "Priority: medium" (the Incident priority values are Critical, High, Moderate and Low)
  # Interpretation: Impact Type "Partially Business-Blocking" <- "PowerCell X1 is partially business blocking"
  # Interpretation: Impact Type "Not Business-Blocking" <- "EnergyBoost Max isn’t blocking"

  Scenario: Support agent raises the "battery performance degradation in portable charging devices" incident
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Incidents" item in the App Launcher
    And I wait until the Incidents list view is ready
    And I click the "New" button on the Incidents list
    And I wait until the "New Incident" modal is ready
    And I fill "battery performance degradation in portable charging devices" in the "Subject" text field in the "New Incident" modal
    And I fill "Multiple customers are seeing the PowerCell X1 and EnergyBoost Max losing charge quickly, disrupting daily operations. PowerCell X1 is partially business blocking, while EnergyBoost Max isn't blocking since some functions still work." in the "Description" textarea in the "New Incident" modal
    And I select "Low" from the "Impact" picklist in the "New Incident" modal
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
    And I search for "PowerCell X1" in the "Product" lookup
    And I select the exact matching product "PowerCell X1"
    And I wait until the "Product" lookup shows "PowerCell X1"
    And I select "Partially Business-Blocking" from the "Impact Type" picklist in the new related asset or product form
    And I click the "Save" button in the new related asset or product form
    And I wait until the Incident record page is shown again
    And I click the "Related" tab on the Incident record page
    And I scroll until the "Related Assets or Products" related list header and its "New" button are in view
    And I click the "New" button in the "Related Assets or Products" related list header
    And I wait until the new related asset or product form shows the "Product" lookup
    And I search for "EnergyBoost Max" in the "Product" lookup
    And I select the exact matching product "EnergyBoost Max"
    And I wait until the "Product" lookup shows "EnergyBoost Max"
    And I select "Not Business-Blocking" from the "Impact Type" picklist in the new related asset or product form
    And I click the "Save" button in the new related asset or product form
    And I wait until the Incident record page is shown again
    Then the Incident record page should show Subject "battery performance degradation in portable charging devices", Impact "Low", Urgency "Medium" and Priority "Moderate"
    And the "Related Assets or Products" related list should show "PowerCell X1" with Impact Type "Partially Business-Blocking" and "EnergyBoost Max" with Impact Type "Not Business-Blocking"
