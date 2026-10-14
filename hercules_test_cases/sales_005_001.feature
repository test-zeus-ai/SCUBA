Feature: SCUBA benchmark case sales_005_001
  Original request: For the opportunity Cloud Software Deal, Schedule an event for meeting with the client to discuss implementation timeline. Update the opportunity stage to Value Proposition.
  # Interpretation: Event Subject "Meeting with the client to discuss implementation timeline" <- "Schedule an event for meeting with the client to discuss implementation timeline"

  Scenario: Schedule a client meeting event on Cloud Software Deal and move it to Value Proposition
    Given the Salesforce Lightning app is open and I am signed in to the benchmark organization
    When I click the App Launcher, search for "Opportunities" and open the Opportunities tab
    And I search the list for "Cloud Software Deal" and open the opportunity "Cloud Software Deal"
    And in the Activity panel I click "New Event"
    And I enter "Meeting with the client to discuss implementation timeline" in the "Subject" field
    And I click "Save" in the event composer
    And I click the pencil icon on the "Stage" field of the opportunity details
    And I select "Value Proposition" in the "Stage" field
    And I click "Save"
    Then the opportunity "Cloud Software Deal" shows Stage "Value Proposition"
    And the Activity timeline lists the event "Meeting with the client to discuss implementation timeline"
    And Test Ended
