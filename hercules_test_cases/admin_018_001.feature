Feature: SCUBA benchmark case admin_018_001 - Create the Favorite custom object

  # Original request: Go ahead and create a custom object called Favorite, hook it to Contact object with a Lookup Relationship, and lock down access so only the System Administrator and Solution Manager profiles can see it.
  # Interpretation: Plural Label "Favorites" <- "a custom object called Favorite"
  # Interpretation: Lookup field label "Contact" <- "hook it to Contact object with a Lookup Relationship"
  # Interpretation: Profile object access "Read" on Favorites for "Solution Manager" <- "only the System Administrator and Solution Manager profiles can see it"

  Scenario: Administrator creates the "Favorite" object with a Contact lookup and restricted access
    Given I am signed in to the Salesforce Lightning app
    When I click "Setup" in the "Setup" menu in the global header
    And I wait until the "Setup Home" page is ready
    And I click the "Object Manager" tab in Setup
    And I wait until the Object Manager list is ready
    And I click the "Create" menu on the Object Manager page
    And I click the "Custom Object" item in the "Create" menu
    And I wait until the "New Custom Object" page is ready
    And I fill "Favorite" in the "Label" text field on the "New Custom Object" page
    And I fill "Favorites" in the "Plural Label" text field on the "New Custom Object" page
    And I click the "Save" button on the "New Custom Object" page
    And I wait until the "Favorite" object details page is ready
    And I click the "Fields & Relationships" link in the object sidebar
    And I click the "New" button on the "Fields & Relationships" page
    And I select the "Lookup Relationship" data type on the "New Custom Field" page
    And I click the "Next" button on the "New Custom Field" page
    And I select "Contact" from the "Related To" picklist on the "New Custom Field" page
    And I click the "Next" button on the "New Custom Field" page
    And I fill "Contact" in the "Field Label" text field on the "New Custom Field" page
    And I click the "Next" button on the "New Custom Field" page
    And I click the "Next" button on the "New Custom Field" page
    And I click the "Next" button on the "New Custom Field" page
    And I click the "Save" button on the "New Custom Field" page
    And I wait until the "Fields & Relationships" list shows "Contact"
    And I search for "Profiles" in the "Quick Find" search field
    And I click the "Profiles" link in the Setup sidebar
    And I click the "Solution Manager" link in the Profiles list
    And I wait until the "Solution Manager" profile page is ready
    And I click the "Edit" button on the "Solution Manager" profile page
    And I check the "Read" checkbox for "Favorites" under "Custom Object Permissions" on the profile edit page
    And I click the "Save" button on the profile edit page
    Then the "Solution Manager" profile should show "Read" access on "Favorites"
