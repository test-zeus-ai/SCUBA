Feature: SCUBA benchmark case admin_003_001 - Create the UnimportantCasesRPT report

  # Original request: Please spin up a Cases report named UnimportantCasesRPT. Add these standard filters, numbered as follows: 1) Status equals New 2) Date/Time Opened is greater than Last Week 3) Priority equals Low 4) Escalated equals true. Then apply this filter logic: (1 OR 2) AND 3 AND NOT 4. Save the report in the Public Reports.
  # Interpretation: Report type "Cases" <- "a Cases report"
  # Interpretation: Folder "Public Reports" <- "Save the report in the Public Reports"
  # Interpretation: Relative date "Last Week" <- "greater than Last Week"
  # Interpretation: Escalated value "True" <- "Escalated equals true"

  Scenario: Administrator creates the "UnimportantCasesRPT" Cases report with filter logic
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Reports" item in the App Launcher
    And I wait until the Reports list view is ready
    And I click the "New Report" button on the Reports page
    And I wait until the "Create Report" report type picker is ready
    And I search for "Cases" in the report type search field and press Enter
    And I click the "Cases" report type in the report type results
    And I click the "Start Report" button in the "Create Report" picker
    And I wait until the report builder shows the "Filters" tab
    And I click the "Filters" tab in the report builder
    And I search for "Status" in the "Add filter..." field and select the "Status" field
    And I select "equals" from the "Operator" picklist in the filter editor
    And I check the "New" option in the "Value" list in the filter editor
    And I click the "Apply" button in the filter editor
    And I search for "Date/Time Opened" in the "Add filter..." field and select the "Date/Time Opened" field
    And I select "greater than" from the "Operator" picklist in the filter editor
    And I fill "Last Week" in the "Value" field in the filter editor
    And I click the "Apply" button in the filter editor
    And I search for "Priority" in the "Add filter..." field and select the "Priority" field
    And I select "equals" from the "Operator" picklist in the filter editor
    And I check the "Low" option in the "Value" list in the filter editor
    And I click the "Apply" button in the filter editor
    And I search for "Escalated" in the "Add filter..." field and select the "Escalated" field
    And I select "equals" from the "Operator" picklist in the filter editor
    And I check the "True" option in the "Value" list in the filter editor
    And I click the "Apply" button in the filter editor
    And I click the "Add Filter Logic" option in the "Filters" panel menu
    And I fill "(1 OR 2) AND 3 AND NOT 4" in the "Filter Logic" field
    And I click the "Save" button in the report builder header
    And I wait until the "Save Report" dialog is ready
    And I fill "UnimportantCasesRPT" in the "Report Name" text field in the "Save Report" dialog
    And I select the "Public Reports" folder in the "Save Report" dialog
    And I click the "Save" button in the "Save Report" dialog
    And I wait until the report "UnimportantCasesRPT" is saved
    Then the report "UnimportantCasesRPT" should show the filters Status equals New, Date/Time Opened greater than Last Week, Priority equals Low and Escalated equals True with filter logic "(1 OR 2) AND 3 AND NOT 4"
