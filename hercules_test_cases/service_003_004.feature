Feature: SCUBA benchmark case service_003_004 - Create a case for Ethan Parker

  # Original request: I just got off the phone with Ethan Parker about a network connectivity problem—please file a case. Make the status 'New', priority Medium, type 'Electrical', and case reasoning 'Installation'. The subject should read 'Network Connectivity Issues - Router Configuration'.
  # Interpretation: Case Origin "Phone" <- "I just got off the phone with Ethan Parker"

  Scenario: Support agent creates the "Network Connectivity Issues - Router Configuration" case for Ethan Parker
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Cases" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Cases is ready
    And I click the "New" button on the Cases list
    And I wait until the "New Case" modal is ready
    And I search for "Ethan Parker" in the "Contact Name" lookup
    And I select the exact matching contact "Ethan Parker"
    And I wait until the "Contact Name" lookup shows "Ethan Parker"
    And I select "New" from the "Status" picklist
    And I select "Phone" from the "Case Origin" picklist
    And I select "Medium" from the "Priority" picklist
    And I select "Electrical" from the "Type" picklist
    And I select "Installation" from the "Case Reason" picklist
    And I fill "Network Connectivity Issues - Router Configuration" in the "Subject" text field
    And I click the "Save" button in the "New Case" modal
    And I wait until the Case record page opens
    Then the Case record page should show Subject "Network Connectivity Issues - Router Configuration" with Contact Name "Ethan Parker"
    And the "Details" tab should show Status "New", Case Origin "Phone", Priority "Medium", Type "Electrical" and Case Reason "Installation"
