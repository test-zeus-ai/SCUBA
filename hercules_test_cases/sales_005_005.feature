Feature: SCUBA benchmark case sales_005_005
  Original request: Create a new task on the Security Solutions opportunity with the subject line "remind me search for the company's revenue," and update the stage to Needs Analysis.

  Scenario: Add the revenue reminder task on Security Solutions and move it to Needs Analysis
    Given the Salesforce Lightning app is open and I am signed in to the benchmark organization
    When I click the App Launcher, search for "Opportunities" and open the Opportunities tab
    And I search the list for "Security Solutions" and open the opportunity "Security Solutions"
    And in the Activity panel I click "New Task"
    And I enter exactly "remind me search for the company's revenue" in the "Subject" field
    And I click "Save" in the task composer
    And I click the pencil icon on the "Stage" field of the opportunity details
    And I select "Needs Analysis" in the "Stage" field
    And I click "Save"
    Then the opportunity "Security Solutions" shows Stage "Needs Analysis"
    And the Activity timeline lists the task "remind me search for the company's revenue"
    And Test Ended
