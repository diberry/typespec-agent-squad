# History

> Project context and key decisions log. Maintained by Scribe.

---

## 2025 — Project Initialization

**Phase 2 of the agentspec architecture.**

This repo (`diberry/typespec-agent-squad`) was initialized as Phase 2 of the agentspec architecture:

- **Phase 1:** [`@agentspec/core`](https://github.com/diberry/typespec-agent) — open standard TypeSpec decorators for agent definition
- **Phase 2:** This repo — Squad-specific emitters (`@bradygaster/typespec-squad`, `@bradygaster/typespec-squad-copilot`)

The vision: define a Squad team in TypeSpec once, emit all `.squad/` configuration files and `squad.config.ts` automatically. Parallel path to the existing hand-authored workflow — not a replacement.

**Requested by:** Dina
**Related issue:** [bradygaster/squad#517](https://github.com/bradygaster/squad/issues/517)

### Initial team cast

| Member | Role |
|--------|------|
| Flight | Lead — architecture, emitter design |
| EECOM | Core Dev — emitter implementation |
| CONTROL | Types Expert — type mapping, SDK types |
| PAO | DevRel — docs, examples |
| FIDO | Quality — tests, CI |
| Scribe | Silent — memory, decisions |
| Ralph | Monitor — backlog |

### Key decisions recorded at init

- `@agentspec/core` must be published before these packages ship
- `@casting` belongs in Squad layer, not core spec
- `@model` is Copilot-specific (lives in `typespec-squad-copilot` only)
- Emitters target `.squad/` directory structure
- `AgentDefinition.name` → manifest `id` via kebab-case translation
- TypeSpec emission is additive; existing `squad build` workflow is unchanged
