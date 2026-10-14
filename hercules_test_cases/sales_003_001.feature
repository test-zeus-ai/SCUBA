Feature: SCUBA benchmark case sales_003_001 - Create a lead

  # Original request: Could you log a web-sourced lead for John Doe at sForce company? I just spoke with him; please set his attitude to warm and the industry to Technology.
  # Interpretation: Lead Status "Working - Contacted" <- "I just spoke with him"
  # Interpretation: Lead Source "Web" <- "web-sourced"

  Scenario: Sales user creates the lead John Doe from sForce
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I search for "Leads" in the "Search apps and items..." search field
    And I click the "Leads" link in the App Launcher
    And I wait until the "Recently Viewed" list view for Leads is ready
    And I click the "New" button on the Leads list
    And I wait until the "New Lead" modal is ready
    And I fill "John" in the "First Name" text field
    And I fill "Doe" in the "Last Name" text field
    And I fill "sForce" in the "Company" text field
    And I select "Working - Contacted" from the "Lead Status" picklist
    And I select "Web" from the "Lead Source" picklist
    And I select "Warm" from the "Rating" picklist
    And I select "Technology" from the "Industry" picklist
    And I click the "Save" button in the "New Lead" modal
    And I wait until the Lead record page opens
    Then the Lead record page should show "John Doe" with Company "sForce"
    And the "Details" tab should show Lead Status "Working - Contacted", Lead Source "Web" and Rating "Warm"
    And the "Details" tab should show Industry "Technology"
