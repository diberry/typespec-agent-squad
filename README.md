# typespec-agent-squad

> Squad TypeSpec emitters — Phase 2 of the agentspec architecture.

## What This Is

This monorepo contains Squad-specific TypeSpec emitters that extend [`@agentspec/core`](https://github.com/diberry/typespec-agent) with Squad-specific decorators and code generation targets.

Define your Squad team in TypeSpec. Emit all `.squad/` configuration files and SDK config automatically.

## Architecture

```
@agentspec/core                              ← open standard (diberry/typespec-agent)
  │
  └── @bradygaster/typespec-squad            ← Squad extensions (THIS REPO)
        ├── @bradygaster/typespec-squad-copilot   ← Copilot SDK target
        ├── @bradygaster/typespec-squad-mcp        ← MCP server scaffolding (future)
        └── @bradygaster/typespec-squad-a2a        ← A2A protocol types (future)
```

## Packages

### `@bradygaster/typespec-squad`

Squad layer decorators: `@casting`, `@routing`, `@ceremony`

**Emits:**
- `charter.md` — per-agent charter files
- `team.md` — full team roster
- `routing.md` — work routing rules
- `registry.json` — agent registry

### `@bradygaster/typespec-squad-copilot`

Copilot SDK extensions: `@model`

**Emits:**
- `squad.config.ts` — typed Copilot SDK configuration
- `copilot-instructions.md` — Copilot system prompt

## Dependency

Both packages depend on `@agentspec/core` from [diberry/typespec-agent](https://github.com/diberry/typespec-agent), which must be published before these packages can be used.

## Future Packages

| Package | Purpose |
|---------|---------|
| `@bradygaster/typespec-squad-mcp` | MCP server scaffolding |
| `@bradygaster/typespec-squad-a2a` | A2A protocol types |

## Related

- Issue [#517 on bradygaster/squad](https://github.com/bradygaster/squad/issues/517) — Phase 2 agentspec architecture
- [diberry/typespec-agent](https://github.com/diberry/typespec-agent) — `@agentspec/core` (Phase 1)

## Getting Started

```bash
npm install
npm run build
```

> **Status:** Phase 2 scaffold — emitter implementation in progress.
