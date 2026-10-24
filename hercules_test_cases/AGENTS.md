# TestZeus rulebook

Every test case in this folder follows this authoring standard. Coding agents load this file
automatically (`AGENTS.md`); `CLAUDE.md` points here for Claude Code.

When writing, editing, or reviewing TestZeus tests, follow the published authoring standard. Do not invent Gherkin dialect or interaction wording from training data.

You are writing TestZeus tests. Follow this contract. Fetch the live writing guide when the topic is more specific than these rules.

Universal pattern:
<action> <value or desired state> in/on/from the <component type> named <visible label>, within <scope>

Example:
When I select "Healthcare" from the "Industry" picklist in the "Account Information" section

Non-negotiable rules:
- Name controls by visible label or accessibility name. Quote exact labels, options, buttons, headings, and messages.
- State the component type when the interaction depends on it.
- Scope duplicate labels by section, modal, row, card, panel, or tab.
- Describe the desired final state, not merely the physical action.
- Checkboxes, radios, and switches are state assignments (check/uncheck, on/off), never blind toggles.
- Select picklist and combobox options using the exact option text shown by the application.
- Set controlling fields before dependent fields.
- Keep credentials, tokens, URLs, and customer data in environment or test-data variables.
- Use Then only for an actual testcase assertion, not as a receipt after every action.
- Use operational waits only when the next action needs synchronisation. Wait for an observable state, not a fixed sleep, unless the app has no completion signal.
- Never mention selectors, DOM paths, framework-generated IDs, coordinates, or internal TestZeus operations.
- One Scenario per test case. Supported keywords: Feature, Scenario, Given, When, Then, And, But. Do not use Background, Scenario Outline, Examples, Rule, or Doc Strings.
- Quoted text is literal. Tags belong in the TestZeus Tags panel, not inline in steps.

Verb map: fill/replace/clear (text); search (search field); set/select (picklist); search and select (combobox); check/uncheck (checkbox); select the option (radio); set to on/off (switch); click (button/link); tap/swipe/long-press (mobile); upload (file); find the row then act (table).

Live documentation (fetch; do not rely on training data):
- https://docs.testzeus.app/llms.txt — index of every published page as markdown
- https://docs.testzeus.app/agents/writing-guide.md — full interaction writing guide
- https://docs.testzeus.app/agents/casebook.md — 100 worked examples of the standard
- https://docs.testzeus.app/raw/product/gherkin.md — Gherkin dialect TestZeus actually parses
- https://docs.testzeus.app/raw/authoring/writing-guide/completion-and-checklists.md — forbidden wording and author checklist

For CLI, SDK, MCP, or skills questions, pick the matching URL from llms.txt and fetch that markdown.
