# Hercules test cases for SCUBA

Gherkin counterparts of the SCUBA zero-shot tasks in
[`data/test_zero_shot.json`](../data/test_zero_shot.json), written as explicit
Salesforce Lightning UI steps for the
[TestZeus Hercules](https://github.com/test-zeus-ai/testzeus-hercules) test agent.

SCUBA tasks are business requests ("convert Frank Knight's lead…"). Hercules runs
explicit steps, so each request is written out here as the UI actions that
fulfil it. Grading is unchanged: SCUBA's own evaluator checks the resulting
Salesforce state.

## Layout

One file per task, named after its SCUBA `task_id`:

```
hercules_test_cases/<task_id>.feature
```

Tasks without a file here have not been written yet.

## Format

```gherkin
Feature: SCUBA benchmark case sales_003_004
  Original request: <the task's query, verbatim, whitespace collapsed>
  # Interpretation: Rating "Hot" <- "seemed very engaged"

  Scenario: <short description>
    Given the Salesforce Lightning app is open and I am signed in to the benchmark organization
    When <first UI action>
    And <next UI action>
    Then <read back the resulting record state>
    And Test Ended
```

Every file must:

- start with `Feature: SCUBA benchmark case <task_id>`;
- quote the task's `query` verbatim on the `Original request:` line;
- contain exactly one scenario that starts from the sign-in `Given` above,
  performs the task with `When`/`And` steps, verifies it with `Then` steps, and
  ends with `And Test Ended`.

## Rules for writing a case

- Use only the public task: its `query` and `instance_dict`. Never use
  `ground_truth_dict` or the evaluator to decide a step or a value.
- Keep every record name, literal value, relationship and status from the
  request exactly as written.
- When the request leaves a value implicit (for example a rating described as
  "seemed very engaged"), choose it from the request's wording and declare it
  on an `# Interpretation:` line: `<field> "<value>" <- "<public phrase>"`.
  An undeclared value that is not stated in the request is rejected when the
  cases are packaged.
- Prefer one concrete UI action per step: open the object from the App
  Launcher, click a named button, enter or select a named field, save.
- Keep conditional choices that the request itself states (for example "if the
  company already exists as an Account, use it; otherwise create one") in a
  single step.
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
