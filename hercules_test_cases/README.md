# Hercules test cases for SCUBA

Gherkin counterparts of the SCUBA zero-shot tasks in
[`data/test_zero_shot.json`](../data/test_zero_shot.json), written as explicit
Salesforce Lightning UI steps for the
[TestZeus Hercules](https://github.com/test-zeus-ai/testzeus-hercules) test agent.

SCUBA tasks are business requests ("convert Frank Knight's lead…"). Hercules runs
explicit steps, so each request is written out here as the UI actions that
fulfil it. Grading is unchanged: SCUBA's own evaluator checks the resulting
Salesforce state.

Every case follows the TestZeus authoring standard in [AGENTS.md](AGENTS.md)
(the TestZeus rulebook) and the live guides it links to.

## Layout

One file per task, named after its SCUBA `task_id`:

```
hercules_test_cases/<task_id>.feature
```

Tasks without a file here have not been written yet.

## Format

```gherkin
Feature: SCUBA benchmark case sales_003_004 - Create a lead

  # Original request: <the task's query, verbatim, whitespace collapsed>
  # Interpretation: Rating "Hot" <- "seemed very engaged"

  Scenario: Sales user creates the lead David Rodriguez from Pinnacle Systems
    Given I am signed in to the Salesforce Lightning app
    When I click the "App Launcher" button
    And I click the "Leads" item in the App Launcher
    And I wait until the "Recently Viewed" list view for Leads is ready
    And I click the "New" button on the Leads list
    And I wait until the "New Lead" modal is ready
    And I fill "David" in the "First Name" text field
    And I select "Hot" from the "Rating" picklist
    And I click the "Save" button in the "New Lead" modal
    And I wait until the Lead record page opens
    Then the Lead record page should show "David Rodriguez" with Company "Pinnacle Systems"
```

Every file must:

- start with `Feature: SCUBA benchmark case <task_id> - <short title>`;
- carry the task's `query` verbatim (whitespace collapsed) in a
  `# Original request:` comment;
- contain exactly one `Scenario` that starts from
  `Given I am signed in to the Salesforce Lightning app`, performs the task with
  `When`/`And` steps and ends with `Then` assertions;
- use only `Feature`, `Scenario`, `Given`, `When`, `Then`, `And`, `But`, `#`
  comments and one-line `If <observable condition>, <one action>; else <one
  action>` conditionals — no `Background`, `Scenario Outline`, `Examples`,
  `Rule`, doc strings or inline tags;
- not use block control flow (`START IF` / `ELSE` / `END IF`, `START LOOP`):
  the runner currently compiles block control flow through a scripted-workflow
  path that cannot execute UI actions. Split a multi-action branch into
  consecutive one-line `If` steps instead;
- not add an end-of-test marker: the runner adds it.

## Rules for writing a case

- Follow [AGENTS.md](AGENTS.md):
  - name every control by its visible label and component type;
  - scope duplicates by modal, panel, section or tab;
  - state checkbox states ("ensure … is checked");
  - use exact picklist options;
  - search a list view with `search for "<value>" in the "Search this list..." search
    field and press Enter`: a Salesforce list only filters on Enter, so typing alone
    is not a search;
  - open an App Launcher item by clicking the "App Launcher" button and then
    `click the "<item>" item in the App Launcher`. Do not type into "Search apps
    and items..." as a separate step: choosing a launcher item navigates away, so
    a search step cannot be proved by the field's value;
  - wait for an observable state only when the next step needs it;
  - use `Then` only for the assertions that decide the test.
- Use only the public task: its `query` and `instance_dict`. Never use
  `ground_truth_dict` or the evaluator to decide a step or a value.
- Keep every record name, literal value, relationship and status from the
  request exactly as written.
- When the request leaves a value implicit (for example a rating described as
  "seemed very engaged"), choose it from the request's wording and declare it
  on an `# Interpretation:` line: `<field> "<value>" <- "<public phrase>"`.
  An undeclared value that is not stated in the request is rejected when the
  cases are packaged.
- Keep conditional choices that the request itself states (for example "if the
  company already exists as an Account, use it; otherwise create one") as
  one-line `If` steps with an observable condition, one action per branch.
- Do not include organization URLs, usernames, record IDs or credentials. The
  sign-in step is supplied by the runner.

## Coverage

| Template | Tasks |
|---|---|
| `create_account_hierarchy` | sales_002_005 |
| `create_lead` | sales_003_001 – sales_003_005 |
| `convert_lead` | sales_004_001 – sales_004_005 |
| `update_opportunity_stage_and_activity` | sales_005_001 – sales_005_005 |
| `create_product_family_and_products` | sales_006_001 – sales_006_004 |
