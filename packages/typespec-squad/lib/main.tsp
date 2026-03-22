// @bradygaster/typespec-squad — Squad decorator library
//
// Import this file in your TypeSpec project to use Squad decorators.

// ── @casting ──────────────────────────────────────────────────────────────────
// Binds a TypeSpec AgentDefinition to a named squad member identity.
// Emits: .squad/agents/{name}/charter.md
//
// Example:
//   @casting("CONTROL", "Types Expert")
//   model TypesAgent extends AgentDefinition { ... }

// ── @routing ──────────────────────────────────────────────────────────────────
// Declares work routing rules. Maps issue labels or work categories to agents.
// Emits: .squad/routing.md
//
// Example:
//   @routing({ label: "type-mapping", assignTo: "CONTROL" })

// ── @ceremony ─────────────────────────────────────────────────────────────────
// Defines a squad ceremony (standup, retro, handoff, planning).
// Emits: .squad/ceremonies.md
//
// Example:
//   @ceremony("handoff", { from: "EECOM", to: "CONTROL" })

// Placeholder — decorator implementations in src/decorators/
