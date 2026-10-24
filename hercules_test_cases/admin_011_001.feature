Feature: SCUBA benchmark case admin_011_001 - Create the Energy Consultations app

  # Original request: Spin up a new app named Energy Consultations. Add Task and Contact to the navigation bar from the available items list. In User Profiles, select System Administrator, Custom: Sales Profile from the available profiles. Keep all other required fields at their default values.
  # Interpretation: Navigation items "Tasks" and "Contacts" <- "Add Task and Contact to the navigation bar"

  Scenario: Administrator creates the "Energy Consultations" Lightning app
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I search for "App Manager" in the "Quick Find" search field
    And I click the "App Manager" link in the Setup sidebar
    And I wait until the "Lightning Experience App Manager" page is ready
    And I click the "New Lightning App" button on the App Manager page
    And I wait until the "New Lightning App" wizard shows the "App Name" field
    And I fill "Energy Consultations" in the "App Name" text field in the "New Lightning App" wizard
    And I click the "Next" button in the "New Lightning App" wizard
    And I wait until the "App Options" step of the wizard is shown
    And I click the "Next" button in the "New Lightning App" wizard
    And I wait until the "Utility Items" step of the wizard is shown
    And I click the "Next" button in the "New Lightning App" wizard
    And I wait until the "Navigation Items" step of the wizard is shown
    And I type "Tasks" in the "Available Items" find box and move "Tasks" from "Available Items" to "Selected Items" in the "Navigation Items" step
    And I type "Contacts" in the "Available Items" find box and move "Contacts" from "Available Items" to "Selected Items" in the "Navigation Items" step
    And I click the "Next" button in the "New Lightning App" wizard
    And I wait until the "User Profiles" step of the wizard is shown
    And I type "System Administrator" in the "Available Profiles" find box and move "System Administrator" from "Available Profiles" to "Selected Profiles" in the "User Profiles" step
    And I type "Custom: Sales Profile" in the "Available Profiles" find box and move "Custom: Sales Profile" from "Available Profiles" to "Selected Profiles" in the "User Profiles" step
    And I click the "Save & Finish" button in the "New Lightning App" wizard
    And I wait until the "Lightning Experience App Manager" page lists "Energy Consultations"
    Then the "Lightning Experience App Manager" page should list the "Energy Consultations" app
