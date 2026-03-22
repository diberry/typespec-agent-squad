# @bradygaster/typespec-squad-copilot

Copilot SDK TypeSpec emitter — extends `@bradygaster/typespec-squad` with Copilot-specific model selection.

## Decorators

| Decorator | Purpose | Emits |
|-----------|---------|-------|
| `@model` | Declare the Copilot model for an agent | `squad.config.ts`, `copilot-instructions.md` |

## Emitted Files

```
squad.config.ts            ← typed Copilot SDK configuration (model per agent)
copilot-instructions.md    ← Copilot system prompt derived from team definition
```

## Usage

```typespec
import "@agentspec/core";
import "@bradygaster/typespec-squad";
import "@bradygaster/typespec-squad-copilot";

@model("gpt-4o")
@casting("CONTROL", "Types Expert")
model TypesAgent extends AgentDefinition {
  name: "CONTROL";
  scope: "type-mapping, SDK type generation";
}
```

## Design Note

`@model` lives here — not in `@bradygaster/typespec-squad` — because model selection is Copilot-specific. The base Squad layer must remain runtime-agnostic so that `@bradygaster/typespec-squad-mcp` and `@bradygaster/typespec-squad-a2a` can also build on it without pulling in Copilot dependencies.

## Dependencies

- `@agentspec/core` ≥ 0.1.0 ([diberry/typespec-agent](https://github.com/diberry/typespec-agent))
- `@bradygaster/typespec-squad` ≥ 0.1.0
- `@typespec/compiler` ≥ 0.61.0

> **Status:** Phase 2 scaffold — emitter implementation in progress.
