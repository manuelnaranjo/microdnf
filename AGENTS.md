# Agent Guidelines

## Bazel Guidelines

### Avoid `genrule`
- **Do not use `genrule`**: The use of `genrule` should always be avoided.
- **Check upstream rules first**: Always search the Bazel Central Registry (BCR) and canonical rulesets (e.g., `tar.bzl`, `rules_pkg`, `rules_cc`, `aspect_rules_py`, `bazel_skylib`, etc.) for existing rules that already cover the requirements before writing custom actions. Hermetic, structured rules must always be preferred over ad-hoc shell commands.

### Bazel Invocation Protocol
- **Mandatory Invocation ID Generation**:
  Whenever invoking `bazel` (`build`, `test`, `run`, `cquery`, `query`, etc.):
  1. Generate an invocation ID with `uuidgen`:
     ```bash
     INVOCATION_ID=$(uuidgen)
     ```
  2. Print it out before calling `bazel`:
     ```bash
     echo "Invocation ID: ${INVOCATION_ID}"
     ```
  3. Pass `--invocation_id=${INVOCATION_ID}` immediately after the command:
     ```bash
     bazel <command> --invocation_id=${INVOCATION_ID} <args>
     ```

- **Execution Patterns**:
  - Multi-line pattern:
    ```bash
    INVOCATION_ID=$(uuidgen)
    echo "Invocation ID: ${INVOCATION_ID}"
    bazel <command> --invocation_id=${INVOCATION_ID} <args>
    ```
  - Inline one-liner pattern:
    ```bash
    INVOCATION_ID=$(uuidgen) && echo "Invocation ID: ${INVOCATION_ID}" && bazel <command> --invocation_id=${INVOCATION_ID} <args>
    ```

### Path Handling Protocol
- **Relative Paths Only**: Paths should never be hardcoded as absolute; they must always be relative to the repository root.
- **Bazel Run Integration**: For tools called through `bazel run`, use `BUILD_WORKSPACE_DIRECTORY` to reference files relative to the workspace root.

---

## Local Customizations

If `AGENTS.local.md` exists in the repository root, load and follow its instructions for user-specific overrides and configuration.

@[AGENTS.local.md](AGENTS.local.md)
