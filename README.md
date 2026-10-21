alisuzunoglu
lead-scoring-r
Repository navigation
Code
Issues
Pull requests
Agents
Actions
Projects
Wiki
Security and quality
Insights
Settings
Files
Go to file
t
T
README.md
lead_scoring.qmd
leads_analysis.R
lead-scoring-r
/
README.md
in
main

Edit

Preview
Indent mode

Spaces
Indent size

2
Line wrap mode

Soft wrap
Editing README.md file contents
 
  1
  2
  3
  4
  5
  6
  7
  8
  9
 10
 11
 12
 13
 14
 15
 16
 17
 18
 19
 20
 21
 22
 23
 24
 25
 26
 27
 28
 29
 30
 31
 32
 33
# Lead scoring in R: an exploratory analysis

Can three simple facts about a sales lead help decide which leads to prioritise? This project builds a transparent 0 to 3 score in R on a public dataset and tests it on a random hold-out sample of leads.

**Read the report:** PASTE YOUR PUBLIC REPORT LINK HERE

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

Self-directed learning project, made while studying introductory R, with Claude used for explanations, coding help and feedback.

## Data

X Education Leads dataset on Kaggle: https://www.kaggle.com/datasets/lakshmikalyan/lead-scoring-x-online-education. Credit and licence terms are on that page.
Use Control + Shift + m to toggle the tab key moving focus. Alternatively, use esc then tab to move to the next interactive element on the page.
No file chosen
Attach files by dragging & dropping, selecting or pasting them.
