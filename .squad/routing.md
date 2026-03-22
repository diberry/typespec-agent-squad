# Work Routing

> Who handles what in typespec-agent-squad.

## Routing Rules

| Work Type | Assigned To | Notes |
|-----------|-------------|-------|
| Emitter implementation, codegen, AST traversal | EECOM | Core emitter work |
| Type mapping, SDK types, tsconfig, .d.ts | CONTROL | TypeScript contracts |
| Documentation, examples, migration guides, READMEs | PAO | Developer-facing content |
| Tests, CI, integration testing, fixture management | FIDO | Quality gate |
| Architecture decisions, emitter design, decorator grammar | Flight | Lead approval required |
| Session logs, decisions, memory | Scribe | Silent — automatic |
| Backlog, work queue, issue triage | Ralph | Monitor — automatic |

## Label → Agent Map

| Label | Agent |
|-------|-------|
| `type-mapping` | CONTROL |
| `emitter` | EECOM |
| `codegen` | EECOM |
| `docs` | PAO |
| `testing` | FIDO |
| `ci` | FIDO |
| `architecture` | Flight |
| `breaking-change` | Flight (review) |

## Escalation

Any work touching decorator grammar or changes to emitted file schemas must get Flight approval before merge.
