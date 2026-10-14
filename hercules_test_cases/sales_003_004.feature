Feature: SCUBA benchmark case sales_003_004 - Create a lead

  # Original request: Met an interesting prospect at the trade show yesterday - David Rodriguez from Pinnacle Systems. He mentioned they're evaluating new vendors for their upcoming expansion and seemed very engaged during our conversation.
  # Interpretation: Lead Source "Other" <- "at the trade show" (no Trade Show source value is assumed)
  # Interpretation: Rating "Hot" <- "seemed very engaged"
  # Interpretation: Lead Status "Working - Contacted" <- "during our conversation"

  Scenario: Sales user creates the lead David Rodriguez from Pinnacle Systems
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I search and select "Leads" in the "Search apps and items..." combobox in the App Launcher
    And I wait until the "Recently Viewed" list view for Leads is ready
    And I click the "New" button on the Leads list
    And I wait until the "New Lead" modal is ready
    And I fill "David" in the "First Name" text field
    And I fill "Rodriguez" in the "Last Name" text field
    And I fill "Pinnacle Systems" in the "Company" text field
    And I select "Working - Contacted" from the "Lead Status" picklist
    And I select "Other" from the "Lead Source" picklist
    And I select "Hot" from the "Rating" picklist
    And I fill "Met at the trade show; evaluating new vendors for their upcoming expansion" in the "Description" textarea
    And I click the "Save" button in the "New Lead" modal
    And I wait until the Lead record page opens
    Then the Lead record page should show "David Rodriguez" with Company "Pinnacle Systems"
    And the "Details" tab should show Lead Status "Working - Contacted", Lead Source "Other" and Rating "Hot"
