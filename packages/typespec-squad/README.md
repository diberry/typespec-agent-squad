# @bradygaster/typespec-squad

Squad layer TypeSpec decorators that extend `@agentspec/core`.

## Decorators

| Decorator | Purpose | Emits |
|-----------|---------|-------|
| `@casting` | Bind an AgentDefinition to a squad member identity | `charter.md` per agent |
| `@routing` | Declare work routing rules | `routing.md` |
| `@ceremony` | Define squad ceremonies | `ceremonies.md` |

## Emitted Files

Running the emitter against a TypeSpec file using these decorators produces:

```
.squad/
  agents/{name}/charter.md   ← from @casting
  team.md                    ← full roster
  routing.md                 ← from @routing
  registry.json              ← agent registry manifest
```

## Usage

```typespec
import "@agentspec/core";
import "@bradygaster/typespec-squad";

@casting("CONTROL", "Types Expert")
model TypesAgent extends AgentDefinition {
  name: "CONTROL";
  scope: "type-mapping, SDK type generation";
}
```

## Dependencies

- `@agentspec/core` ≥ 0.1.0 ([diberry/typespec-agent](https://github.com/diberry/typespec-agent))
- `@typespec/compiler` ≥ 0.61.0

> **Status:** Phase 2 scaffold — emitter implementation in progress.
