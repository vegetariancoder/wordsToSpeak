## Dunderly Company

### Step -1 Requirements for Dunderly Company


```mermaid
flowchart TD
A[Requirements]-->B[Functional]
A[Requirements]-->C[Non-Functional]
```

#### Functional Requirements (What the system should do)

- Application must be Web Based. (Nothing needs to be installed in user desktop)
- Perform CRUD operations on employees.
- Manage Salaries
  - Allow managers to ask for salary changes.
  - Allow HR manager approve/reject request.
- Manage vacation days.
- Use external payment system.

#### Non Functional Requirements

- Class information system
- Not a lot of users.
- Not a lot of data.
- Interface to external system.

#### Non Functional Values

- 10 Concurrent Users.
- Manage 500 users.
- Data volume forcast : 25.5 GB
  - Relational and Unstructured.
- Not mission-critical
- File-Based structure.


### Step-2 Mapping Components

Based on the requirements given by the business, we need to create several service for each operational processing.

```mermaid
flowchart TD
A[Service]-->B[Employee]
A[Service]-->C[Salary]
A[Service]-->D[Vacation]
A[Service]-->E[Vacation]
```

```mermaid
flowchart LR
A[Web Service]-->B[Employee] --> G[CRUD Operations] <-->M[Database]
A[Web Service]-->C[Salary] --> H[Salary Approval Workflow] <-->M[Database]
A[Web Service]-->D[Vacation] --> I[Vacation Management] <-->M[Database]
A[Web Service]-->E[Home Page] --> J[Basic Home Page View]
K[Logging]-->L[Logging and Monitoring]
```

- There will be 4 services created:
1. Employee
2. Salary
3. Vacation
4. Home Page

All of these services will interact with each other using REST API via HTTP Requests and Responses.


### Step-3 Service Selection/ Technology Selection


```mermaid
flowchart TD
A[Service]-->B[Employee] --> I[Azure Apps Service] <--> J[Azure SQL and Azure Data Lake]
A[Service]-->C[Salary] --> I[Azure Apps Service] <--> J[Azure SQL and Azure Data Lake]
A[Service]-->D[Vacation] --> I[Azure Apps Service] <--> J[Azure SQL and Azure Data Lake]
A[Service]-->E[Home Page] --> H[Azure Static Web Apps]
F[Logging]-->G[Azure Log Analytics]
```

#### Coding Language and Why

#### List Down API Listings for all services
- GET
- PUT
- POST
- DELETE
- Return Code

#### Include Costing


