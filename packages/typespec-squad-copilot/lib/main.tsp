// @bradygaster/typespec-squad-copilot — Copilot SDK decorator library
//
// Import this file in your TypeSpec project alongside @bradygaster/typespec-squad
// to target the Copilot SDK.

// ── @model ────────────────────────────────────────────────────────────────────
// Declares the Copilot model assignment for an agent.
// Emits: model field in squad.config.ts and copilot-instructions.md
//
// Supported values (aligned with Copilot SDK model identifiers):
//   "gpt-4o" | "gpt-4o-mini" | "claude-sonnet-4-5" | "claude-opus-4-5" | "auto"
//
// Example:
//   @model("gpt-4o")
//   @casting("CONTROL", "Types Expert")
//   model TypesAgent extends AgentDefinition { ... }
//
// Note: "auto" defers model selection to the Copilot runtime.
// Note: @model is intentionally NOT in @bradygaster/typespec-squad — it is
//       Copilot-specific and must not pollute the runtime-agnostic Squad layer.

// Placeholder — decorator implementation in src/decorators/model.ts
