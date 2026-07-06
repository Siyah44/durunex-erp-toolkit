# DuruNex ERP Toolkit

DuruNex ERP Toolkit is a practical ERP developer toolkit for PHP and Microsoft SQL Server projects.

The project is based on real ERP needs such as finance, purchasing, sales, inventory, banking, approval flow, authorization, and reporting. The main goal is to keep ERP examples simple, understandable, and safe for business use.

This repository does not contain private company data, customer records, production credentials, or a full commercial ERP installation. It contains reusable examples, documentation, and helper patterns that can be used while developing ERP modules.

## Purpose

ERP development is not only about screens and database tables. It also includes business rules, financial controls, stock movements, document flow, approvals, user permissions, and reporting accuracy.

This project tries to collect useful examples for developers and consultants who need clear ERP logic without unnecessary complexity.

## Main Areas

- PHP helper examples
- Microsoft SQL Server reporting queries
- SAP Business One style workflow notes
- Approval workflow examples
- Authorization and permission model examples
- Finance, sales, purchasing, inventory, and banking documentation
- Safe SELECT-only report query examples

## Target Users

This repository may be useful for:

- ERP developers
- SAP Business One consultants
- PHP developers
- Microsoft SQL Server users
- Small and medium-sized companies building ERP extensions
- Business users who need readable ERP report logic

## Project Status

The project is in active development.

Current focus:

- Clean documentation
- Safe SQL report examples
- PHP helper functions
- Workflow templates
- ERP module planning notes

## Folder Structure

```text
docs/                         Project documentation
examples/sap-b1-mssql-reports  SQL report examples
examples/php-helpers           Small PHP helper examples
examples/workflows             Business workflow examples
src/Helpers                    Reusable helper classes
src/Examples                   Example service classes
```

## Safety Note

The SQL files in this repository are report examples. They are written as SELECT queries. They should be tested on a copy or test database before use.

No DELETE, UPDATE, INSERT, TRUNCATE, posting, or accounting correction script is included.

## License

This project is licensed under the MIT License.
