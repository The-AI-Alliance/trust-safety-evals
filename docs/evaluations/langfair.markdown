---
layout: default
title: LangFair
parent: Evaluations and Benchmarks
nav_order: 11
---

# LangFair evaluation card

This card describes LangFair as an evaluation toolkit, not as a benchmark or evidence of clinical readiness. It records the capabilities and boundaries reviewed at commit [`afd6dc0`](https://github.com/cvs-health/langfair/commit/afd6dc0b053515e2795e5f0dc2f039bac491e668).

## Status and identity

- **Name and version:** LangFair, repository state at `afd6dc0` (2026-06-29).
- **Stable identifier:** Git commit `afd6dc0b053515e2795e5f0dc2f039bac491e668`.
- **Maintainers and contact route:** CVS Health; [GitHub issues](https://github.com/cvs-health/langfair/issues).
- **License:** The repository contains a `LICENSE` file; confirm the applicable terms for each dependency and artifact before redistribution.
- **Lifecycle status:** Experimental for clinical evaluation. LangFair itself is a general-purpose evaluation toolkit and does not claim clinical validation.

## Intended use and decision context

- **Evaluation objective:** Measure selected group-fairness disparities for binary classification and selected toxicity, stereotype, counterfactual, and recommendation-system behaviors.
- **Intended users:** Model and application teams performing exploratory fairness evaluation.
- **Intended decisions:** Identify candidate disparities for investigation and compare a fixed system under a fixed protocol.
- **Out-of-scope decisions:** Clinical deployment, patient-level decisions, certification, causal fairness claims, or proof that a system is equitable.
- **Unit of analysis:** Depends on the metric: labeled classification records, generated texts, counterfactual text pairs, or recommendation/search outputs.
- **Deployment context represented:** User-supplied data. The toolkit does not provide a representative clinical population or healthcare deployment context.

## Toolkit composition and coverage

| Component | Construct | Evidence type | Important boundary |
|---|---|---|---|
| [`ClassificationMetrics`](https://github.com/cvs-health/langfair/blob/afd6dc0b053515e2795e5f0dc2f039bac491e668/langfair/metrics/classification/classification.py) | Predicted-prevalence, false-negative, false-omission, false-positive, and false-discovery rate parity | Deterministic metric calculation | Binary labels, binary predictions, and exactly two groups; multi-group and intersectional audits require external orchestration |
| Text-generation metrics | Toxicity, stereotype, and counterfactual similarity or sentiment | Metric and model-assisted evaluation | Outputs depend on metric/model choice and do not establish downstream clinical harm |
| Recommendation metrics | Jaccard similarity, search-result misinformation, and pairwise ranking gaps | Deterministic and model-assisted evaluation | Does not establish clinical utility, calibration, or patient outcome equity |

- **Covered failure modes:** Selected between-group rate disparities and selected harmful-language or output-consistency signals.
- **Explicitly uncovered failure modes:** Calibration within groups, decision-curve utility, treatment-effect heterogeneity, access barriers, workflow effects, causal discrimination, and patient outcomes.
- **Domain relevance:** False-negative-rate gaps can be clinically important, but clinical relevance must be established for the specific endpoint, subgroup definition, prevalence, and care pathway.
- **Coverage gaps:** No bundled healthcare dataset, clinical benchmark, clinical validation study, or patient-safety adjudication protocol.

## Evaluation protocol

- **System boundary:** Metric layer applied to user-supplied predictions or generated outputs; not an end-to-end clinical system evaluation.
- **Prompt and interaction protocol:** User-defined and therefore not standardized by this card.
- **Scoring procedure:** Use the exact LangFair commit, metric configuration, subgroup definitions, label semantics, and input transformation in every report.
- **Reproducibility artifacts:** Retain the code commit, environment lock, metric configuration, subgroup counts, missing-result policy, and de-identified inputs or a reproducible substitute.

## Measures and interpretation

- **Primary measure:** No universal primary measure. Select measures before evaluation based on the clinical error costs and decision context.
- **Subgroup reporting:** Report both group denominators, outcome prevalence, confusion-matrix counts, point estimates, and uncertainty. LangFair's point estimates alone are insufficient when groups are small.
- **Thresholds:** No general clinical pass/fail threshold is established.
- **Comparability conditions:** Changes to cohort construction, subgroup definitions, prevalence, thresholds, model version, prompt, or metric configuration invalidate direct comparison unless explicitly adjusted.
- **Known metric failure modes:** Small denominators, base-rate differences, threshold dependence, multiple comparisons, binary-group reduction, and counterfactual substitutions that alter clinical meaning.

## Validation evidence

- **Content validity:** Not established for a specific clinical use by the toolkit itself.
- **Reliability:** Must be assessed for model-assisted metrics and repeated generation settings; not reported by this card.
- **Construct validity:** Must be demonstrated in the target clinical task; metric availability is not construct validation.
- **External validity:** Not established for healthcare deployment.
- **Open validation gaps:** Multi-group and intersectional evaluation, uncertainty estimation, calibration, clinical utility, representative cohorts, and clinician or affected-community review.

## Safety boundaries and governance

- **Unsafe inference risk:** A small disparity estimate does not show that a model is clinically safe or equitable, and a large estimate does not by itself identify the causal mechanism.
- **Potential harms from use:** False reassurance, unstable subgroup rankings, stigmatizing group definitions, privacy leakage from small cells, and clinically invalid counterfactual substitutions.
- **Mitigations:** Pre-specify endpoints and groups, suppress unsafe small-cell disclosures, attach uncertainty, review substitutions clinically, and use domain-expert and affected-stakeholder review.
- **High-stakes boundary:** LangFair results must not be used alone for clinical deployment or patient-care decisions.
- **Issue and correction route:** Report toolkit defects in [LangFair issues](https://github.com/cvs-health/langfair/issues); report errors in this card in the [Trust and Safety Evaluations repository](https://github.com/The-AI-Alliance/trust-safety-evals/issues).

## Taxonomy recommendation

Catalog LangFair under **Ethical and Bias Testing → Fairness Evaluation** as a use-case-level evaluation toolkit. Do not list it as a standalone benchmark, and label clinical use as experimental until a target-specific validation record is available.
