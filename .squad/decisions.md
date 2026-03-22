# Decisions

> Team decisions that all agents must respect. Managed by Scribe.

---

## @agentspec/core dependency — must publish first

**By:** Flight
**What:** This repo depends on `@agentspec/core` from [diberry/typespec-agent](https://github.com/diberry/typespec-agent). That package must be published to npm before these packages can declare a real peer dependency version.
**Why:** Phase ordering. typespec-agent is Phase 1; this repo is Phase 2.

---

## @casting stays in the Squad layer

**By:** Flight
**What:** The `@casting` decorator belongs in `@bradygaster/typespec-squad`, not in `@agentspec/core`.
**Why:** Casting is a Squad-specific concept (binding TypeSpec agents to named squad members). The base spec should remain runtime-agnostic and not encode squad identity conventions.

---

## @model is Copilot-specific

**By:** CONTROL
**What:** The `@model` decorator lives exclusively in `@bradygaster/typespec-squad-copilot`. It must not appear in `@bradygaster/typespec-squad`.
**Why:** Model selection is a Copilot SDK concern. Keeping it in the Copilot-specific package ensures that future `typespec-squad-mcp` and `typespec-squad-a2a` packages can build on the Squad layer without pulling in Copilot dependencies.

---

## Emitters target .squad/ directory structure

**By:** EECOM
**What:** All emitted output goes into a `.squad/` directory tree, mirroring the existing squad runtime conventions.
**Why:** Parallel path to existing `squad build` command (see below). Output must be drop-in compatible.

---

## AgentDefinition.name maps to manifest id via translation table

**By:** CONTROL
**What:** When emitting `registry.json`, the TypeSpec `AgentDefinition.name` property maps to the manifest `id` field through a translation table (kebab-case, lowercase). Example: `"CONTROL"` → `"control"`.
**Why:** TypeSpec names follow TypeSpec conventions; manifest ids follow squad runtime conventions. A deterministic translation table keeps both sides clean without requiring manual overrides.

---

## Parallel path to existing squad build — not a replacement

**By:** Flight
**What:** TypeSpec-based emission is an additive path. It does not replace `squad build` or the existing `.squad/` authoring workflow.
**Why:** Existing projects hand-author `.squad/` files. TypeSpec emission is opt-in for teams who want schema-driven generation. Both must coexist.
