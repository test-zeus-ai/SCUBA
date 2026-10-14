Feature: SCUBA benchmark case sales_006_002
  Original request: TechNova has introduced a new Product Family focused on "Smart Home Lighting Solutions". For this release, we have three products. The first product "BrightEase" with the product code "BrightEase" is a "budget-friendly smart bulb for everyday use"; the second product "GlowSync" with the product code "BrightEase" "features customizable color schemes and app control"; and the third product "LuxEdge" with the product code "LuxEdge" is "designed for premium interiors with motion sensing and voice assistant integration". Help me to create the relevant info in the Product records.

  Scenario: Create the Smart Home Lighting Solutions product family and its three products
    Given the Salesforce Lightning app is open and I am signed in to the benchmark organization
    When I click the gear icon and open "Setup"
    And I open the "Object Manager" tab and open the object "Product"
    And I open "Fields & Relationships" and click the field "Product Family"
    And in the "Values" section I click "New"
    And I enter "Smart Home Lighting Solutions" as the new picklist value and click "Save"
    And I click the App Launcher, search for "Products" and open the Products tab
    And I click the "New" button
    And I enter "BrightEase" in the "Product Name" field
    And I enter "BrightEase" in the "Product Code" field
    And I select "Smart Home Lighting Solutions" in the "Product Family" field
    And I enter "budget-friendly smart bulb for everyday use" in the "Product Description" field
    And I check the "Active" checkbox
    And I click "Save"
    And I return to the Products tab
    And I click the "New" button
    And I enter "GlowSync" in the "Product Name" field
    And I enter "BrightEase" in the "Product Code" field
    And I select "Smart Home Lighting Solutions" in the "Product Family" field
    And I enter "features customizable color schemes and app control" in the "Product Description" field
    And I check the "Active" checkbox
    And I click "Save"
    And I return to the Products tab
    And I click the "New" button
    And I enter "LuxEdge" in the "Product Name" field
    And I enter "LuxEdge" in the "Product Code" field
    And I select "Smart Home Lighting Solutions" in the "Product Family" field
    And I enter "designed for premium interiors with motion sensing and voice assistant integration" in the "Product Description" field
    And I check the "Active" checkbox
    And I click "Save"
    And I return to the Products tab
    Then the Products list shows "BrightEase", "GlowSync" and "LuxEdge" in Product Family "Smart Home Lighting Solutions" with the product codes entered above
    And Test Ended
