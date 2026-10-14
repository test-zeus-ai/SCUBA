Feature: SCUBA benchmark case sales_006_004
  Original request: The Smart Home Security product family offers advanced solutions for home protection and monitoring.. SmartLock Pro for advanced door security, WatchCam 360 for comprehensive surveillance, and AlertSense for motion detection and alerts. Help me to create the relevant info in the Product records.

  Scenario: Create the Smart Home Security product family and its three products
    Given the Salesforce Lightning app is open and I am signed in to the benchmark organization
    When I click the gear icon and open "Setup"
    And I open the "Object Manager" tab and open the object "Product"
    And I open "Fields & Relationships" and click the field "Product Family"
    And in the "Values" section I click "New"
    And I enter "Smart Home Security" as the new picklist value and click "Save"
    And I click the App Launcher, search for "Products" and open the Products tab
    And I click the "New" button
    And I enter "SmartLock Pro" in the "Product Name" field
    And I select "Smart Home Security" in the "Product Family" field
    And I enter "advanced door security" in the "Product Description" field
    And I check the "Active" checkbox
    And I click "Save"
    And I return to the Products tab
    And I click the "New" button
    And I enter "WatchCam 360" in the "Product Name" field
    And I select "Smart Home Security" in the "Product Family" field
    And I enter "comprehensive surveillance" in the "Product Description" field
    And I check the "Active" checkbox
    And I click "Save"
    And I return to the Products tab
    And I click the "New" button
    And I enter "AlertSense" in the "Product Name" field
    And I select "Smart Home Security" in the "Product Family" field
    And I enter "motion detection and alerts" in the "Product Description" field
    And I check the "Active" checkbox
    And I click "Save"
    And I return to the Products tab
    Then the Products list shows "SmartLock Pro", "WatchCam 360" and "AlertSense" in Product Family "Smart Home Security"
    And Test Ended
