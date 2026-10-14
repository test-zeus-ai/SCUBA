Feature: SCUBA benchmark case sales_005_002
  Original request: For Enterprise Software Sale, could you send a quick follow-up email to Confirm the proposal details, and afterward set the opportunity stage to Perception Analysis?
  # Interpretation: Email Subject "Follow-up: Confirm the proposal details" <- "send a quick follow-up email to Confirm the proposal details"

  Scenario: Send a follow-up email on Enterprise Software Sale and move it to Perception Analysis
    Given the Salesforce Lightning app is open and I am signed in to the benchmark organization
    When I click the App Launcher, search for "Opportunities" and open the Opportunities tab
    And I search the list for "Enterprise Software Sale" and open the opportunity "Enterprise Software Sale"
    And in the Activity panel I click "Email"
    And if the "To" field is empty, I add the opportunity's primary contact or the current user as the recipient
    And I enter "Follow-up: Confirm the proposal details" in the "Subject" field
    And I enter "Following up to confirm the proposal details." in the email body
    And I click "Send"
    And I click the pencil icon on the "Stage" field of the opportunity details
    And I select "Perception Analysis" in the "Stage" field
    And I click "Save"
    Then the opportunity "Enterprise Software Sale" shows Stage "Perception Analysis"
    And the Activity timeline lists the email "Follow-up: Confirm the proposal details"
    And Test Ended
