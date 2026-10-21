# Lead scoring in R: an exploratory analysis

Can three recorded facts about a sales lead help prioritise leads? This self-directed learning project uses R to construct a transparent 0–3 score and compare simple selection rules on a random test split. Because predictor selection used the full dataset, the evaluation is exploratory rather than independent.

**Read the report:** https://01a15b35-f593-c789-5b56-30df00a7d75d.share.connect.posit.cloud/

## What is in this repository

- `leads_analysis.R`: loads the data, builds the score, and splits the leads into practice and test groups.
- `lead_scoring.qmd`: the Quarto report. It runs `leads_analysis.R` and produces the tables and numbers on the page.

The data file is not included.

## How to run it

1. Download the dataset from Kaggle (link below) and check its licence terms there.
2. Save it as `Leads X Education.csv` in your home folder. If you save it elsewhere, change the path in the line of `leads_analysis.R` that reads the CSV.
3. Open `leads_analysis.R` in RStudio and run it.
4. To rebuild the report, open `lead_scoring.qmd` in RStudio and click Render. Keep both files in the same folder.

## Main limits

- The three traits were chosen by looking at all leads, so the test is not fully independent and the results are exploratory.
- The dataset does not say when each fact was recorded, so it is not known whether they would be available when a lead is scored.
- The data shows patterns, not causes.

## Learning context

Self-directed learning project, made while studying introductory R.

## Data

X Education Leads dataset on Kaggle: https://www.kaggle.com/datasets/lakshmikalyan/lead-scoring-x-online-education. Credit and licence terms are on that page.
