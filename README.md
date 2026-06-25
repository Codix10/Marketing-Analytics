# 📊 Marketing Analytics — End-to-End Pipeline

> Analyzing customer journeys, conversion funnels, drop-off behavior, and review sentiment using SQL, Python, and Power BI.

---

## 🗂️ Table of Contents

- [Project Overview](#project-overview)
- [Tech Stack](#tech-stack)
- [Project Flow](#project-flow)
- [Key Findings](#key-findings)
- [Connect](#connect)

---

## Project Overview

This project presents a complete marketing analytics pipeline — from raw data restoration to actionable business insights. The focus areas include **customer journey mapping**, **conversion funnel analysis**, **drop-off identification**, and **customer review sentiment scoring**.

The pipeline is designed to answer critical business questions:
- Where are customers dropping off in the journey?
- Which stages of the funnel have the lowest conversion?
- What are customers saying?

---

## Tech Stack

| Tool | Purpose |
|---|---|
| **SQL (SQL Server)** | Data restoration, cleaning, and transformation |
| **Python** | Sentiment score generation from customer reviews |
| **Power BI** | Interactive dashboards and visual analysis |

---

## Project Flow

**Step 1 — Data Source**

The raw dataset was provided as a **`.bak` file** (SQL Server backup) containing marketing and customer interaction data. The backup was restored into SQL Server to make it queryable and ready for processing.

**Step 2 — SQL: Data Cleaning & Transformation**

The restored database was cleaned and transformed using SQL to ensure data quality and analytical readiness. This involved removing duplicates, handling NULL values, standardizing date formats, creating derived columns such as funnel stage flags, and joining tables into a unified analytical dataset.

**Step 3 — Python: Sentiment Analysis**

Customer review text was processed using Python to generate a sentiment score for each review. Sentiment was classified as Positive, Neutral, or Negative using a compound scoring approach, and the enriched dataset was exported for use in Power BI.

**Step 4 — Power BI: Dashboard & Analysis**

The final enriched dataset was loaded into Power BI to build an interactive multi-page dashboard covering three core areas:

- 📍 **Customer Journey Analysis** — Mapped end-to-end customer paths from awareness to purchase, visualizing touchpoints and identifying the most and least engaged stages.
- 🔽 **Funnel Analysis** — Built a stage-by-stage conversion funnel measuring drop rates at each step and surfacing bottlenecks where volume falls significantly.
- 🚪 **Drop-Off Analysis** — Identified exit points across funnel stages and compared drop-off rates by channel, product category, and time period.

---

## Key Findings

- **Highest Drop-Off Stage:** The largest customer drop-off occurred at the `Checkout` stage, with approximately `576` users not proceeding further. This tells that Checkout page has pain points which is causing customer drop off.
- **Average Duration and Drop-off:** With Average Duration of `157` product named Basketball contributed the most to Drop-off.
- **Sentiment Distribution:** `840` reviews were Positive, `15` Neutral, and `226` Negative.
- **Journey Insight:** Customer Journey Analysis shows that only `9.6%` customers ends at Purchase.
---

## Connect

Feel free to reach out or connect on [LinkedIn](https://www.linkedin.com/in/murtaza-mustafa-7578b6282/) if you have feedback or questions about this project.
