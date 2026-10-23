Feature: SCUBA benchmark case admin_009_001 - Create the ByAmount Opportunity list view

  # Original request: Please create a new list view on the Opportunity object named ByAmount. Show only two columns—Account Name and Amount—and make it visible exclusively to the "CFO" and the "Channel Sales Team".
  # Interpretation: Group type "Roles" <- "visible exclusively to the \"CFO\" and the \"Channel Sales Team\""
  # Interpretation: Sharing "Share list view with groups of users" <- "make it visible exclusively to the \"CFO\" and the \"Channel Sales Team\""

  Scenario: Administrator creates the "ByAmount" list view shared with two groups
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Opportunities" item in the App Launcher
    And I wait until the Opportunities list view is ready
    And I click the "List View Controls" button on the Opportunities list
    And I click the "New" item in the "List View Controls" menu
    And I wait until the "New List View" dialog is ready
    And I fill "ByAmount" in the "List Name" text field in the "New List View" dialog
    And I select the "Share list view with groups of users" option under "Who sees this list view?"
    And I select "Roles" from the sharing type picklist next to the groups search field in the "New List View" dialog
    And I search for "CFO" in the groups search field in the "New List View" dialog and select the "CFO" result
    And I search for "Channel Sales Team" in the groups search field in the "New List View" dialog and select the "Channel Sales Team" result
    And I click the "Save" button in the "New List View" dialog
    And I wait until the "ByAmount" list view is shown
    And I click the "List View Controls" button on the Opportunities list
    And I click the "Select Fields to Display" item in the "List View Controls" menu
    And I wait until the "Select Fields to Display" dialog is ready
    And I move every field other than "Account Name" and "Amount" from "Visible Fields" to "Available Fields" in the "Select Fields to Display" dialog
    And If "Account Name" or "Amount" is not in "Visible Fields", I move it from "Available Fields" to "Visible Fields"
    And I click the "Save" button in the "Select Fields to Display" dialog
    Then the "ByAmount" list view should show only the "Account Name" and "Amount" columns
