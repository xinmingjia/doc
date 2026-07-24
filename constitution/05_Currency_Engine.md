# 05_Currency_Engine

> Engine Constitution

Version: 1.1

Status: Planning

Owner

- CTO

Related Documents

- 00_Project_Context.md
- 02_Product_Blueprint.md
- 03_System_Architecture.md
- 04_Dictionary_Engine.md

---

# 1. Purpose

This document defines the responsibilities, principles and architecture of the Currency Engine.

The Currency Engine provides reusable currency and exchange-rate capabilities across the system.

It is responsible for:

- Currency management
- Exchange rate management
- Currency conversion
- Base currency calculation
- Cross-market analytics

All currency-related implementation should follow this document.

---

# 2. Position

Currency Engine is the centralized capability responsible for all currency processing.

Decision Journal supports global trading markets with different trading currencies.

Examples:

- China A (CNY)
- Hong Kong (HKD)
- US (USD)
- UK (GBP)
- Japan (JPY)

Currency Engine ensures all monetary values remain comparable across markets.

---

# 3. Design Background

Global trading requires multiple currencies.

Recording only original trade values prevents meaningful comparison across markets.

Currency Engine provides a unified calculation model while preserving original transaction data.

---

# 4. Goals

## 4.1 Multi-Currency Support

Support multiple trading currencies.

Initial currencies include:

- CNY
- USD
- HKD
- GBP
- JPY

Additional currencies may be added without architectural changes.

---

## 4.2 Preserve Original Values

Original transaction values must always be stored.

Original data should never be replaced by converted values.

---

## 4.3 Unified Base Currency

The system calculates a comparable value using a configurable base currency.

Current default base currency:

- CNY

Future versions may support:

- USD
- HKD
- Other currencies

---

## 4.4 Historical Accuracy

Historical exchange rates should be preserved.

Historical trading results must never change because exchange rates changed later.

---

# 5. Core Principles

## 5.1 Original Data First

Always preserve:

- Original Currency
- Original Amount

---

## 5.2 Base Currency Analytics

Cross-market analytics should use a unified base currency.

The current default is CNY.

The architecture must support configurable base currencies in the future.

---

## 5.3 Centralized Exchange Rates

Exchange rates are managed only by Currency Engine.

Pages must never manage exchange rates independently.

---

## 5.4 Capability First

Currency conversion is a reusable capability shared by the entire system.

---

## 5.5 Extensibility

Future support may include:

- Additional currencies
- Cryptocurrency
- NAV calculation
- Portfolio valuation

---

# 6. Data Model

Currency Engine maintains three core entities.

## Currency

Represents a trading currency.

Examples:

- CNY
- USD
- HKD
- GBP
- JPY

---

## Exchange Rate

Represents the exchange rate at a specific point in time.

Example:

1 USD = 7.20 CNY

---

## Timestamp

Represents when the exchange rate became effective.

---

# 7. Currency Conversion Workflow

Every currency conversion follows the same workflow.

Original Amount

↓

Original Currency

↓

Exchange Rate Lookup

↓

Currency Engine

↓

Base Currency Amount

↓

Store Both Values

Principles:

- Original values are immutable.
- Converted values are reproducible.
- Historical exchange rates are preserved.
- Conversion logic exists only in the Currency Engine.

---

# 8. Trade Data

Every monetary field should maintain both original and converted values.

Typical fields include:

- Entry Amount
- Exit Amount
- Commission
- Trading Cost
- Profit & Loss

Each field stores:

Original Amount

+

Original Currency

+

Exchange Rate

+

Base Currency Amount

This enables both accurate historical records and cross-market comparison.

---

# 9. Base Currency Analytics

Cross-market analytics should always operate on a unified base currency.

Current default:

CNY

Examples:

Total Profit

=

China A (CNY)

+

US Market (USD → CNY)

+

Hong Kong Market (HKD → CNY)

The calculation model should remain independent of the selected base currency.

Future versions may allow users to change the reporting currency.

---

# 10. Data Presentation

User interfaces should display both original and converted values whenever appropriate.

Example:

Trade Cost

100 USD

≈

720 CNY

---

Profit

500 USD

≈

3,600 CNY

Presentation principles:

- Preserve the original trading currency.
- Display converted values for comparison.
- Clearly distinguish original and converted amounts.

---

# 11. Exchange Rate Strategy

Exchange-rate data should be:

- Accurate
- Reliable
- Sustainable

Possible data sources include:

- International financial providers
- Domestic financial providers
- Third-party exchange-rate APIs

Supported update strategies:

## Real-Time Rates

Used for:

- Portfolio valuation
- Current account value

---

## Daily Rates

Used for:

- Trade settlement
- Daily reporting

---

## Historical Rates

Used for:

- Historical performance
- Review
- Analytics

Historical exchange rates must remain immutable once associated with a completed trade.

---

# 12. Error Handling

Exchange-rate failures must never block trade recording.

If an exchange rate cannot be retrieved:

- Save the original trade data.
- Mark the exchange-rate status.
- Retry exchange-rate synchronization later.

Trade integrity always has higher priority than exchange-rate availability.

---

# 13. Future Extensions

Currency Engine should evolve by extending reusable capabilities.

Future capabilities may include:

- Portfolio Valuation
- Net Asset Value (NAV)
- Currency Exposure Analysis
- Multi-Base-Currency Reporting
- Cryptocurrency Support

Architecture should remain unchanged as these capabilities are added.

---

# 14. Current Status

Status

Planning

Architecture confirmed:

- Multi-Currency Support
- Exchange Rate Management
- Original Amount Preservation
- Base Currency Calculation
- Historical Exchange Rates

Next Milestone

Implement the first production version of the Currency Engine.

---

# Engine Principles Summary

Every Currency Engine implementation should follow these principles.

1. Original Data First.
2. Multi-Currency Support.
3. Base Currency Analytics.
4. Historical Accuracy.
5. Centralized Exchange Rates.
6. Capability First.
7. Extensible Architecture.

---

# Change History

| Version | Date | Owner | Description |
|---------|------------|------|------------------------------------------------|
| 1.0 | 2026-07-23 | CTO | Initial version |
| 1.1 | 2026-07-24 | Founder + CTO | Unified Constitution format, introduced configurable base currency, aligned Engine principles |

---

# Next Document

06_Prompt_Guide.md
