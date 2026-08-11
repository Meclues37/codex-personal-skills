---
name: vibe-coding-mature-deps
description: Prefer mature GitHub repositories, npm packages, framework starters, and proven libraries when doing vibe coding, rapid prototyping, app/site/game/tool building, or loosely specified feature work. Use when the user asks to vibe code, quickly build an idea, make an app, clone a familiar product pattern, add substantial behavior, says "优先使用 github/npm mature project", or otherwise expects implementation where core logic could be composed from existing mature projects instead of written from scratch.
---

# Vibe Coding Mature Deps

## Core Rule

Prefer integrating mature existing projects and libraries over hand-writing core domain logic from the beginning. Write custom code for product-specific UX, glue, styling, integration boundaries, and small missing pieces.

## Workflow

1. Clarify the target experience just enough to choose a stack and domain libraries.
2. Search local package files first. If dependencies are already present, prefer compatible packages already in the repo.
3. For new capabilities, look for mature options before implementing:
   - npm packages for frontend/backend behavior.
   - GitHub repositories or official starters for complete patterns.
   - Framework-maintained examples before random tutorials.
   - Specialized engines for games, editors, charts, auth, payments, rich text, maps, physics, parsing, scheduling, media, realtime, and data grids.
4. Evaluate candidates quickly:
   - Recent maintenance and release history.
   - Stars/downloads/adoption, but do not treat popularity as the only signal.
   - License compatibility.
   - Fit with the existing framework and build tool.
   - API simplicity and long-term maintainability.
   - Bundle/runtime cost for frontend work.
5. Choose the smallest dependency set that handles the hard, general problem well.
6. Implement the actual requested product using library APIs and repo-local patterns.
7. Document important dependency choices in the final answer, especially when the choice avoids custom logic.

## Search Guidance

When network access is available or explicitly requested, use current primary sources:

- npm package pages, package repository links, and official docs for package health and APIs.
- GitHub repository README, releases, issues, and examples for project maturity.
- Official framework examples for Next.js, Vite, React, Vue, Svelte, Astro, Express, Fastify, NestJS, Expo, Electron, Tauri, Phaser, Three.js, Monaco, TipTap, ProseMirror, Lexical, TanStack, shadcn/ui, Radix UI, and similar ecosystems.

When network access is unavailable, inspect the repo and use stable built-in knowledge conservatively. Prefer adding an obvious established dependency over inventing a complex subsystem.

## Implementation Bias

- Do not hand-roll auth, crypto, payments, rich text editors, file upload pipelines, drag-and-drop, date recurrence, calendar logic, query caching, routing, form validation, charts, 3D engines, physics, or complex parsers unless the user explicitly asks for from-scratch logic.
- Do not copy large chunks from external projects into the repo. Prefer package installation, documented APIs, or small attributed patterns that are compatible with the license.
- Keep the app coherent: avoid piling on dependencies when a framework-native feature already solves the problem.
- If the user asks for a clone or familiar product vibe, use existing UI primitives and domain packages to approximate the interaction model while avoiding trademarked assets or proprietary code.
- For games, visual editors, calendars, spreadsheets, diagrams, maps, search, markdown, and media workflows, use proven engines or components for the core behavior.

## When To Build From Scratch

Build custom logic when:

- The behavior is tiny and clearer than a dependency.
- The project already has a local abstraction that should be extended.
- A dependency would create licensing, security, size, or maintenance risk.
- The requested behavior is novel, product-specific, or intentionally educational.
- The user explicitly asks to implement from first principles.
