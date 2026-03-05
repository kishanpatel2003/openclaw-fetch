# Eval Protocol

After depositing a research brief in the Vault, trigger the eval agent.

## How to Trigger

Use `sessions_spawn` in one-shot mode:

```
sessions_spawn(
  mode: "run",
  task: <eval prompt below, with brief path substituted>
)
```

## Eval Prompt Template

```
You are a research quality evaluator. Score the following research brief against this rubric.

Brief path: ~/vault/[path-to-brief]

## Rubric (each dimension 1-3, max total 18, target 14+)

| Dimension | Question |
|-----------|----------|
| thesis_clarity | Can you state the core thesis in one sentence based solely on this brief? |
| source_tension | What are the primary points of disagreement between sources cited? |
| grounding | Are there claims that feel ungrounded or unsourced? |
| completeness | Are there obvious major perspectives or counterarguments missing? |
| summary_accuracy | Is the frontmatter summary line accurate to the body of the brief? |
| filing_quality | Is this brief filed in a logical location? Does the filename match the content? |

## Output

Write your evaluation to ~/vault/[same-directory]/eval_[brief-filename].md using this format:

---
type: eval
brief: [brief-filename.md]
date: YYYY-MM-DD
total_score: [N]/18
flag_for_review: [true | false — true if total < 10]
scores:
  thesis_clarity: [1-3]
  source_tension: [1-3]
  grounding: [1-3]
  completeness: [1-3]
  summary_accuracy: [1-3]
  filing_quality: [1-3]
---

## Critique
Written evaluation: what the researcher did well, where they fell short, specific suggestions for improvement.

Then commit the eval file: cd ~/vault && git add . && git commit -m "eval: [brief-filename]"
```
