```mermaid
    graph TD;
        A[Customer] -->|Orders| B[Online Store];
        B -->|Displays| C[Product Catalog];
        B -->|Processes| D[Order Management System];
        D -->|Updates| E[Inventory System];
        D -->|Notifies| F[Delivery Service];
        F -->|Delivers| A;
        C -->|Contains| G[Fruits];
        G --> H[Fresh Produce];
        G --> I[Dried Fruits];
        G --> J[Canned Fruits];
    ```
