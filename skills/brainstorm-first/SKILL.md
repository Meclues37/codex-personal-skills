---
name: brainstorm-first
description: Clarify ambiguous or creative requests before implementation, then present a short proposal and wait for approval. Use when requirements, desired behavior, visual direction, scope, or success criteria are unclear; when multiple reasonable implementations could materially differ; or when the work involves a risky action requiring explicit approval. Skip this skill for simple factual questions, explanations, status checks, clearly specified low-risk edits, and routine read-only inspection.
---

# Brainstorm First

Turn unclear ideas into an agreed direction without adding ceremony to straightforward work. Ask only the questions needed to prevent a meaningful misunderstanding, propose a concise approach, and obtain approval at the appropriate boundary.

## Decide Whether to Pause

Use this workflow when at least one of these is true:

- The request is ambiguous in a way that could change the result.
- The work is creative and the user's preferences are not yet known.
- Scope, constraints, audience, or success criteria are missing.
- Two or more plausible approaches have materially different outcomes or tradeoffs.
- The next step is risky and requires explicit approval.

Do not invoke a brainstorming ceremony merely because a task involves code or several steps. Proceed normally when the user has given a clear objective and the work is low-risk.

Examples that normally do not need a pause:

- Answering a factual question.
- Explaining existing code or reporting status.
- Reading files, searching text, or inspecting configuration.
- Fixing a clearly described typo or making a precisely specified small edit.
- Continuing an approach the user already approved.

## Clarify Efficiently

Inspect relevant local context first when read-only inspection can answer questions safely.

Ask focused questions before implementation:

- Ask one question at a time when answers affect subsequent questions.
- Prefer a small set of concrete choices when that makes the decision easier.
- Explain briefly why a question matters if its purpose is not obvious.
- Do not ask for information that can be discovered safely from available context.
- Stop asking once there is enough information to propose a sound approach.

If the ambiguity is minor, state the reasonable assumption and proceed unless the assumption could cause meaningful rework, loss, cost, exposure, or an unwanted external effect.

## Present a Short Proposal

Before implementing ambiguous or creative work, summarize:

- The intended outcome.
- The recommended approach.
- Important boundaries or exclusions.
- Any meaningful tradeoff or assumption.

Keep the proposal proportional to the task. A simple change may need only two or three sentences. Offer alternatives only when the choice matters.

Ask the user to approve or revise the proposal. Do not begin implementation until they approve it. Approval of the proposal authorizes ordinary, reversible, in-scope implementation steps, but it does not authorize separate risky actions.

## Require Approval for Risky Actions

Request explicit approval immediately before a risky action unless the user has already explicitly authorized that specific action in the current request.

Treat these as risky:

- Downloading or installing software, skills, plugins, packages, or executables.
- Running untrusted code or scripts obtained externally.
- Deleting data, recursively moving data, overwriting important files, or making changes that are difficult to reverse.
- Publishing, deploying, releasing, purchasing, or changing production systems.
- Sending messages, submitting forms, or modifying external accounts and services.
- Pushing commits, merging pull requests, changing remote repositories, or altering shared infrastructure.
- Exposing secrets, personal data, credentials, or private content.
- Any action with meaningful financial, legal, security, privacy, or safety consequences.

Before asking, state:

- The exact action.
- Why it is needed.
- The main consequence or risk.

Do not bundle approval for unrelated risky actions. If the scope changes materially, ask again.

## Keep Momentum

While waiting for approval, continue only with safe, useful, read-only work that does not prejudge the user's decision. After approval, execute the agreed work without repeatedly asking about routine low-risk steps.

If the user declines or changes direction, respect that choice and revise the proposal.
