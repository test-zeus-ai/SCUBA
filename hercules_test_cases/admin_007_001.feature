Feature: SCUBA benchmark case admin_007_001 - Show AnnualRevenue only when Active is Yes

  # Original request: On the Account object, set up a dynamic form and AnnualRevenue only shows up when the Active field is set to Yes; otherwise keep it hidden.
  # Interpretation: Field "Annual Revenue" <- "AnnualRevenue"
  # Interpretation: Lightning record page "Account Record Page" <- "On the Account object, set up a dynamic form"

  Scenario: Administrator adds a visibility rule for Annual Revenue on the Account dynamic form
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I click the "Object Manager" tab in Setup
    And I wait until the Object Manager list is ready
    And I search for "Account" in the Object Manager "Quick Find" search field
    And I click the "Account" link in the Object Manager list
    And I wait until the "Account" object details page is ready
    And I click the "Lightning Record Pages" link in the object sidebar
    And I click the "Account Record Page" link in the "Lightning Record Pages" list
    And I click the "Edit" button on the Lightning record page details
    And I wait until the Lightning App Builder canvas is ready
    And If the record details component offers "Upgrade Now", I click it and finish the dynamic form migration
    And I click the "Annual Revenue" field on the Lightning App Builder canvas
    And I click the "Add Filter" button under "Set Field Visibility" in the field properties panel
    And I select "Active" from the "Field" picklist in the visibility filter
    And I select "Equal" from the "Operator" picklist in the visibility filter
    And I select "Yes" from the "Value" picklist in the visibility filter
    And I click the "Done" button in the visibility filter
    And I click the "Save" button in the Lightning App Builder header
    And I wait until the Lightning App Builder shows the page is saved
    Then the "Annual Revenue" field should show a visibility filter "Active" Equal "Yes" in the field properties panel
