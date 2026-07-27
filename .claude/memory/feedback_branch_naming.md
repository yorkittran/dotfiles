---
name: Branch naming convention
description: Use feat/<descriptive-name> without phase numbers for branch names
type: feedback
---

Branch names should use `feat/<descriptive-name>` pattern without phase numbers.
Example: `feat/dynamodb-repositories` not `feat/phase-1-dynamodb-repositories`.

**Why:** User prefers clean, descriptive branch names that don't leak internal planning structure.
**How to apply:** When creating branches for any phase, derive the name from the feature content, not the phase label.
