# typespec-agent-squad — Squad Team

> Squad TypeSpec emitters, Phase 2 of the agentspec architecture.
> *"If it compiles, it ships."*

## Project

- **Project:** Squad TypeSpec Emitters — Squad-specific TypeSpec extensions and code generation
- **Owner:** Dina
- **Stack:** TypeScript, TypeSpec v0.61+, depends on @agentspec/core
- **Vision:** Define Squad teams in TypeSpec, emit all `.squad/` config files + `squad.config.ts`
- **Phase:** 2 (Phase 1 = [@agentspec/core](https://github.com/diberry/typespec-agent))

## Members

| Name | Role | Scope | Emoji |
|------|------|-------|-------|
| Flight | Lead | Architecture, decisions, emitter design | 🏗️ |
| EECOM | Core Dev | Emitter implementation, codegen | 🔧 |
| CONTROL | Types Expert | Type mapping, SDK type generation | 🔧 |
| PAO | DevRel | Documentation, examples, migration guides | 📝 |
| FIDO | Quality | Tests, CI, integration testing | 🧪 |
| Scribe | (silent) | Memory, decisions, session logs | 📋 |
| Ralph | (monitor) | Work queue, backlog | 🔄 |

## Coding Agent

<!-- copilot-auto-assign: false -->

| Name | Role | Status |
|------|------|--------|
| @copilot | Coding Agent | 🤖 Coding Agent |

### Capabilities

**🟢 Good fit — auto-route when enabled:**
- TypeSpec decorator scaffolding
- TypeScript type definitions and tsconfig
- Package.json and monorepo configuration
- README and documentation updates

**🟡 Needs review:**
- Emitter logic and AST traversal
- New decorator semantics
- Breaking changes to public API surface

**🔴 Not suitable:**
- Architectural decisions about decorator grammar
- Changes to @agentspec/core (different repo)
