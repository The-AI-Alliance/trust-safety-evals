---
layout: default
title: Benchmark Card Template
parent: Evaluations and Benchmarks
nav_order: 420
---

# Benchmark Card Template

A benchmark card records the evidence needed to decide whether a benchmark is suitable for a particular evaluation claim. It complements an executable task card: a task card can specify how to load data, format prompts, and compute a score, while a benchmark card documents why those tasks were combined, which risks they cover, and where the resulting scores stop being informative.

Use explicit values such as `not measured`, `not reported`, or `not applicable` instead of leaving fields blank. Claims should be no broader than the evidence recorded in the card.

## Status and identity

- **Name and version:**
- **Stable identifier:** DOI, release tag, or commit SHA.
- **Release date:**
- **Maintainers and contact route:**
- **License:** Separate code, data, and documentation licenses where needed.
- **Lifecycle status:** proposed, experimental, validated, deprecated, or archived.
- **Change log:** Describe score-affecting changes and compatibility with prior versions.

## Intended use and decision context

- **Evaluation objective:** The behavior, capability, risk, or failure mode being measured.
- **Intended users:** For example, model developers, application teams, auditors, or researchers.
- **Intended decisions:** What evidence from this benchmark may inform.
- **Out-of-scope decisions:** Decisions that require evidence this benchmark does not provide.
- **Unit of analysis:** Response, conversation, case, agent trajectory, model, or system.
- **Deployment context represented:** Languages, domains, users, tools, and operating conditions.

## Benchmark composition

- **Component evaluations or tasks:** Include task-card or implementation links and versions.
- **Aggregation rationale:** Why these components belong together.
- **Sample counts and splits:** Include exclusions and missing-result handling.
- **Data provenance:** Creation, collection, filtering, annotation, and transformation history.
- **Contamination controls:** Checks performed, their coverage, and known gaps.
- **Sensitive-data review:** Personal, clinical, copyrighted, or otherwise restricted content and its handling.

## Taxonomy and coverage

Map each component to the relevant risk or evaluation taxonomy. Use stable identifiers when the source taxonomy provides them.

| Component | Taxonomy source and version | Category | Failure mode or construct | Evidence type |
|---|---|---|---|---|
|  |  |  |  | behavioral, process, human review, or other |

Also record:

- **Covered failure modes:**
- **Explicitly uncovered failure modes:**
- **Domain relevance:** Why the selected tasks represent the stated domain.
- **Coverage gaps:** Languages, populations, modalities, severities, or contexts absent from the benchmark.

## Evaluation protocol

- **System boundary:** Model-only, retrieval-augmented system, tool-using agent, or end-to-end application.
- **Prompt and interaction protocol:** Templates, system prompts, number of turns, tools, and retrieval settings.
- **Generation settings:** Decoding parameters, sampling repetitions, and randomness controls.
- **Scoring procedure:** Deterministic rules, model graders, human review, or combinations.
- **Grader evidence:** Grader model and prompt versions, calibration, agreement checks, and failure handling.
- **Execution environment:** Framework and dependency versions, hardware where material, and run configuration.
- **Reproducibility artifacts:** Code, configuration, task cards, raw outputs, and run logs.

## Measures and interpretation

For every reported measure, define its direction, range, denominator, aggregation, and uncertainty.

| Measure | Construct | Range and direction | Denominator and missing results | Aggregation | Uncertainty |
|---|---|---|---|---|---|
|  |  |  |  |  |  |

- **Primary measure and selection rationale:**
- **Subgroup reporting:** Pre-specified groups, sample sizes, and uncertainty; avoid unsupported comparisons.
- **Thresholds:** Empirical or normative basis for any pass/fail boundary.
- **Comparability conditions:** Changes that invalidate comparison across systems or versions.
- **Known metric failure modes:** Gaming, saturation, grader bias, or aggregation effects.

## Validation evidence

- **Content validity:** Expert or stakeholder review and the questions it addressed.
- **Reliability:** Inter-rater, test-retest, internal consistency, or other relevant estimates.
- **Construct validity:** Expected relationships with other measures or controlled contrasts.
- **External validity:** Evidence for transfer beyond the evaluated sample and setting.
- **Adversarial or red-team review:** Challenges attempted and resulting changes.
- **Open validation gaps:** Evidence still required; do not convert planned work into a completed claim.

## Safety boundaries and limitations

- **What the benchmark does not measure:**
- **Unsafe inference risks:** Conclusions that cannot be drawn from the scores.
- **Potential harms from use:** Misranking, false reassurance, stigmatization, privacy exposure, or benchmark overfitting.
- **Mitigations:** Reporting constraints, human review, access controls, or use restrictions.
- **High-stakes boundary:** State whether the benchmark supports deployment, clinical, legal, or other consequential decisions. If it does not, say so directly.

## Governance and maintenance

- **Issue and correction route:**
- **Versioning policy:**
- **Deprecation criteria:**
- **Conflict-of-interest disclosures:**
- **Stakeholder participation:** Domain experts, affected groups, annotators, and independent reviewers.
- **Result retention:** Location and retention policy for raw and derived artifacts.

## Minimal worked example: MedFailBench

This abbreviated example demonstrates boundary language; it is not a completed card.

- **Evaluation objective:** Identify safety-relevant failure patterns in model responses to synthetic clinical scenarios.
- **Unit of analysis:** One model response to one synthetic case.
- **Evidence type:** Behavioral outputs scored with an explicit failure-mode rubric.
- **Intended decision:** Support failure analysis and regression testing during model or application development.
- **Out-of-scope decision:** Establishing clinical readiness, comparative patient outcomes, or safety in a deployed healthcare setting.
- **Coverage gap:** Synthetic cases do not represent the full distribution of real patients, workflows, languages, or institutions.
- **High-stakes boundary:** Results require domain review and must not be used alone for clinical deployment decisions.

A full card would additionally identify the exact release, scenario counts, taxonomy version, scorer protocol, clinician-review status, subgroup denominators, uncertainty, and reproducibility artifacts.

## Relationship to other cards

- [Unitxt task cards](https://www.unitxt.ai/en/latest/docs/adding_catalog_artifacts.html#task-cards){:target="unitxt-task-cards"} describe executable dataset, task, template, and metric composition.
- The [EvalEval Coalition catalog](https://evalcards.evalevalai.com/){:target="evaleval-catalog"} is developing standardized evaluation-card records and should be reused rather than duplicated where fields align.
- A benchmark card may link to either format for machine-executable details while retaining benchmark-level composition, validation, decision-boundary, and governance evidence.
