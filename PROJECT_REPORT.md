# PROJECT REPORT: MH ACCESSORIES (CAMERA SPECIALIST STORE)

## TABLE OF CONTENTS

1.  **CHAPTER 1: INTRODUCTION**
    *   1.1 Introduction to Niche E-Commerce Systems
    *   1.2 Problem Statement
    *   1.3 Proposed Solution
    *   1.4 Project Scope
    *   1.5 Objectives
    *   1.6 Deployment Strategy
    *   1.7 Version Control Workflow
    *   1.8 Testing Strategy
    *   1.9 Database Overview
2.  **CHAPTER 2: SYSTEM ANALYSIS**
    *   2.1 Existing System Study
    *   2.2 Feasibility Study (Technical, Operational, Economic)
    *   2.3 Methodology (SDLC)
3.  **CHAPTER 3: REQUIREMENT ENGINEERING**
    *   3.1 List of Actors
    *   3.2 Functional Requirements (Detailed Module Wise)
    *   3.3 Non-Functional Requirements
4.  **CHAPTER 4: SYSTEM DESIGN**
    *   4.1 System Architecture
    *   4.2 Use Case Modeling
    *   4.3 Data Flow Modeling (DFD)
    *   4.4 Database Design (ERD & Schema)
5.  **CHAPTER 5: IMPLEMENTATION DETAILS**
    *   5.1 Technology Stack
    *   5.2 UI/ UX
    *   5.6 Detailed Table Definitions
6.  **CHAPTER 6: API ENDPOINTS SPECIFICATION**
7.  **CHAPTER 7: BUSINESS PROCESS FLOWS**
    *   7.1 Staff Onboarding & Approval Flow
    *   7.2 Order Processing Lifecycle
    *   7.3 Payment Management Lifecycle
8.  **CHAPTER 8: USE CASES**
9.  **CHAPTER 9: QUALITY REGISTER**
10. **CHAPTER 10: SOFTWARE TESTING**
    *   10.1 Test Plan
    *   10.2 Detailed System Test Cases
11. **CHAPTER 11: RISK REGISTER**
    *   11.1 High Severity Risks
    *   11.2 Medium Severity Risks
    *   11.3 Low Severity Risks
12. **CHAPTER 12: PROJECT CONCLUSION**
13. **CHAPTER 13: REFERENCE**

---

## CHAPTER 1: INTRODUCTION

### 1.1 Introduction to Niche E-Commerce Systems
In the specialized world of photography and videography, general e-commerce platforms often fail to provide the curated experience professional and hobbyist photographers need. "MH Accessories" is a specialized web-based platform dedicated specifically to selling **Cameras, Lenses, and Photography Accessories**. Unlike generic stores, this system is designed to cater to the specific needs of the camera community, offering a focused catalog of high-end equipment.

### 1.2 Problem Statement
Photographers currently face significant challenges when buying gear:
*   **Scarcity of Specialized Stores**: It is increasingly rare to find dedicated online stores that focus solely on cameras and related gear. General marketplaces lack the necessary categorization (e.g., Mount Type, Sensor Size).
*   **Lack of Detailed Specs**: Generic sites often omit critical technical details required for camera gear (e.g., Lens compatibility, ISO ranges).
*   **Trust Issues**: High-value items like cameras require a trusted source, which random social media sellers cannot provide.
*   **Inventory Chaos**: Manual tracking of expensive lenses and bodies leads to high-cost stock discrepancies.

### 1.3 Proposed Solution
We propose **MH Accessories (Camera Edition)**, a centralized React-based web application. This solution offers:
*   **Specialized Catalog**: A structure designed for photography gear (Categories: DSLR, Mirrorless, Lenses, Tripods, Lighting).
*   **Real-time Inventory**: Critical for high-ticket items where stock is often low.
*   **Seamless Checkout**: A secure and guided process for purchasing expensive equipment.
*   **Admin Dashboard**: A restricted area for business owners to manage complex product details and high-value orders.

### 1.4 Project Scope
The scope of the project includes:
*   **Customer Portal**: Landing page showcasing new Model releases, Category Browsing (Canon, Sony, Nikon, etc.), Cart Management, and Checkout.
*   **Admin Portal**: Secure Dashboard for managing inventory of Cameras and Accessories, viewing sales analytics, and processing orders.
*   **Database**: robust relational schema to handle product data and order history.
*   **Exclusions**: Advanced features like "Lens Compatibility Checkers" or "Trade-in Value Calculators" are out of scope for this version.

### 1.5 Objectives
1.  To provide a dedicated platform for photographers that fills the gap left by general retailers.
2.  To reduce the time required to find specific camera models and compatible accessories.
3.  To provide the business owner with real-time visibility into sales of high-value stock.
4.  To ensure a premium, visual-first design that appeals to photographers.

### 1.6 Deployment Strategy
*   **Frontend**: Deployed via Vercel for fast image loading (critical for camera sites).
*   **Backend/Database**: Hosted on Supabase (Managed PostgreSQL).
*   **CI/CD**: Manual deployment initially, evolving to automated pipelines.

### 1.7 Version Control Workflow
*   **Platform**: GitHub.
*   **Branching Strategy**: `main` (Production), `dev` (Development), `feature/*` (Features).
*   **Commit Standards**: Conventional Commits.

### 1.8 Testing Strategy
*   **Unit Testing**: Testing utility functions (e.g., Price formatting).
*   **Integration Testing**: Verifying flows between the Product Page and Cart.
*   **UAT**: Verifying that product specifications display correctly for different camera types.

### 1.9 Database Overview
The system utilizes **PostgreSQL** hosted on Supabase. RLS policies ensure data security, which is paramount when dealing with customer data for expensive purchases.

---

## CHAPTER 2: SYSTEM ANALYSIS

### 2.1 Existing System Study
Currently, the business operates via fragmented channels (Instagram DMs, Forums).
*   **Pros**: Community engagement.
*   **Cons**: No centralized catalog, difficult to search for specific lenses, manual order tracking is risky for expensive items.

### 2.2 Feasibility Study

#### 2.2.1 Technical Feasibility
The React + Vite + Supabase stack is ideal. React handles the image-heavy UI of a camera store efficiently, while Supabase provides the reliability needed for transaction data.

#### 2.2.2 Operational Feasibility
The admin interface is designed for ease of use, allowing staff to quickly update stock when new camera models are released without coding knowledge.

#### 2.2.3 Economic Feasibility
*   **Development Cost**: Internal.
*   **Hosting Cost**: $0/month (Free Tier).
*   **ROI**: Very High. The niche nature of the store allows for higher margins and customer loyalty compared to generic tech stores.

### 2.3 Methodology (SDLC)
**Agile Methodology**:
1.  **Planning**: Defining camera-specific requirements.
2.  **Design**: UI focus on high-quality product imagery.
3.  **Development**: Building the catalog and checkout.
4.  **Testing**: Ensuring order accuracy.
5.  **Deployment**: MVP Launch.

---

## CHAPTER 3: REQUIREMENT ENGINEERING

### 3.1 List of Actors
1.  **Visitor**: Browses cameras and lenses.
2.  **Customer**: Purchases equipment (provides shipping/billing info).
3.  **Administrator**: Manages the catalog (adds new Camera Bodies, Lenses) and fulfills orders.

### 3.2 Functional Requirements (Detailed Module Wise)

#### Module 1: Product Management (Camera Focused)
*   **FR-01**: Admin can add products with specific attributes (Brand, Type, Price, High-Res Image).
*   **FR-02**: Admin can edit details (e.g., update price when a model becomes older).
*   **FR-03**: Admin can delete discontinued items.
*   **FR-04**: Customers can filter by Category (e.g., "Mirrorless Cameras", "Prime Lenses").

#### Module 2: Order Processing
*   **FR-05**: Persistent Cart for multi-item orders (Body + Lens + Filter).
*   **FR-06**: Capture detailed shipping info (crucial for ensuring safe delivery of fragile items).
*   **FR-07**: Unique Order ID generation.
*   **FR-08**: Save Order Items atomically.

#### Module 3: Authentication
*   **FR-09**: Secure Admin Access.
*   **FR-10**: Email/Password Login for staff.

### 3.3 Non-Functional Requirements
1.  **Performance**: High-resolution camera images must load lazily to ensure speed.
2.  **Reliability**: Zero tolerance for lost orders due to high item value.
3.  **Security**: Strict RLS policies.
4.  **Usability**: Clean, dark-mode design that highlights product photography.

---

## CHAPTER 4: SYSTEM DESIGN

### 4.1 System Architecture
Client-Server Architecture:
*   **Client**: React.js (Visual-heavy UI).
*   **Server**: Supabase (PostgreSQL).

**(Insert Architecture Diagram Here)**

### 4.2 Use Case Modeling
Primary actors interact with the system to Browse, Buy, and Manage.

**(Insert Use Case Diagram Here)**

### 4.3 Data Flow Modeling (DFD)
*   **Level 0**: Customer -> System -> Admin.
*   **Level 1**: Breakdown into Browsing Catalog, Cart Management, Auth.

**(Insert DFD Level 0 Here)**
**(Insert DFD Level 1 Here)**

### 4.4 Database Design (ERD & Schema)
Normalized tables optimized for e-commerce.

**(Insert ERD Diagram Here)**

---

## CHAPTER 5: IMPLEMENTATION DETAILS

### 5.1 Technology Stack
*   **Frontend**: React 18, Vite, Tailwind CSS (Dark Mode).
*   **Backend**: Supabase.
*   **Icons**: Lucide React (Camera, Lens, Aperture icons).

### 5.2 UI/UX
The design uses a "Dark Mode" aesthetic common in creative software (Lightroom, Photoshop) to appeal to photographers.
*   **Visuals**: Large hero images for products.
*   **Navigation**: Clear splits between "Cameras", "Lenses", and "Accessories".

### 5.6 Detailed Table Definitions

#### Table: `products`
| Column | Type | Constraint | Description |
| :--- | :--- | :--- | :--- |
| id | BIGINT | PRIMARY KEY | Unique ID |
| name | TEXT | NOT NULL | e.g. "Sony A7IV" |
| price | NUMERIC | NOT NULL | Price |
| category | TEXT | NOT NULL | e.g. "Mirrorless" |
| image | TEXT | - | Product Shot |
| description | TEXT | - | Tech Specs |

#### Table: `orders`
| Column | Type | Constraint | Description |
| :--- | :--- | :--- | :--- |
| id | BIGINT | PRIMARY KEY | Order ID |
| customer_name | TEXT | NOT NULL | Name |
| total_amount | NUMERIC | NOT NULL | Total Cost |
| status | TEXT | DEFAULT 'Pending' | Status |
| created_at | TIMESTAMP | DEFAULT NOW() | Date |

#### Table: `order_items`
| Column | Type | Constraint | Description |
| :--- | :--- | :--- | :--- |
| id | BIGINT | PRIMARY KEY | Item ID |
| order_id | BIGINT | FK -> orders | Order Link |
| product_id | BIGINT | FK -> products | Product Link |
| quantity | INTEGER | NOT NULL | Count |

---

## CHAPTER 6: API ENDPOINTS SPECIFICATION
(Client-side Supabase calls)

1.  **Get Cameras/Lenses**
    *   `supabase.from('products').select('*')`
2.  **Get Product Details**
    *   `supabase.from('products').select('*').eq('id', id)`
3.  **Place Order**
    *   `supabase.from('orders').insert(...)`
4.  **Admin Login**
    *   `supabase.auth.signInWithPassword(...)`

---

## CHAPTER 7: BUSINESS PROCESS FLOWS

### 7.1 Admin Onboarding & Access Flow
1.  **Request**: Store manager requests access for new staff.
2.  **Creation**: Admin account created in Supabase.
3.  **Access**: Staff logs in to manage inventory.

### 7.2 Order Processing Lifecycle
1.  **Initiation**: Photographer adds "Canon R5" to cart and checkouts.
2.  **Validation**: System confirms stock availability.
3.  **Generation**: Order created in DB.
4.  **Fulfillment**: Admin verifies payment, packages camera securely, marks as "Shipped".
5.  **Completion**: Customer receives tracking info.

### 7.3 Payment & Transaction Management
1.  **Calculation**: Subtotal + Shipping calculated.
2.  **Authorization**: Manual verification (Bank Transfer/COD) for high-value safety.
3.  **Recording**: Transaction logged in `orders` table.
4.  **Reconciliation**: Admin marks "Paid" upon receipt of funds.

---

## CHAPTER 8: USE CASES

1.  **UC-01 Browse Cameras**: User looks for "Mirrorless Cameras" sorted by Price.
2.  **UC-02 Compare Specs**: User views details for "Sony lens 24-70mm GM".
3.  **UC-03 Purchase Gear**: User adds Camera Body + Lens to cart and buys.
4.  **UC-04 Manage Stock**: Admin updates quantity of "Nikon Z6" after a shipment arrives.
5.  **UC-05 View Orders**: Admin checks today's sales to prepare shipments.

---

## CHAPTER 9: QUALITY REGISTER

| ID | Quality Attribute | Target Metric | Achieved? |
| :--- | :--- | :--- | :--- |
| QR-1 | **Visual Fidelity** | High Quality Images supported | Yes |
| QR-2 | **Performance** | < 1.5s Load Time | Yes |
| QR-3 | **Accuracy** | 100% Price Calculation Accuracy | Yes |

---

## CHAPTER 10: SOFTWARE TESTING

### 10.1 Test Plan
Focus on the "Checkout Flow" as it involves money and inventory.

### 10.2 Detailed System Test Cases

| TC ID | Test Scenario | Expected Result | Status |
| :--- | :--- | :--- | :--- |
| **TC-01** | Add Camera to Cart | Cart shows 1 item | Pass |
| **TC-02** | Checkout with Empty Cart | Error shown | Pass |
| **TC-03** | Admin Login | Dashboard Accessible | Pass |
| **TC-04** | Create New Lens Listing | Item appears in store | Pass |

---

## CHAPTER 11: RISK REGISTER

### 11.1 High Severity Risks
*   **R-01 Price Errors**: Incorrect price on a $3000 camera is a huge loss. *Mitigation*: Double confirmation on Admin edits.
*   **R-02 Fraudulent Orders**: Fake orders for expensive gear. *Mitigation*: Admin verification step before shipping.

### 11.2 Medium Severity Risks
*   **R-03 Stock Sync**: Selling a camera that is out of stock. *Mitigation*: Real-time DB checks.

---

## CHAPTER 12: PROJECT CONCLUSION
**MH Accessories** fills a critical gap in the e-commerce market by providing a **dedicated, trustworthy platform for photographers**. By focusing on the specific needs of camera buyers—high-quality visuals, detailed categorization, and reliable order tracking—we have created a superior alternative to generic marketplaces. The system is built to handle high-value inventory securely and efficiently.

---

## CHAPTER 13: REFERENCE
1.  **React**: https://react.dev
2.  **Supabase**: https://supabase.com
3.  **Tailwind CSS**: https://tailwindcss.com

---

## CHAPTER 14: FUTURE ENHANCEMENTS

### 14.1 Functional Enhancements
*   **Lens Compatibility Checker**: A dedicated tool where users select their camera body (e.g., "Sony E-Mount") and the system automatically filters for compatible lenses, reducing purchase errors.
*   **Trade-in Valuation Module**: An algorithmic calculator allowing customers to input their existing gear's condition to receive an estimated trade-in credit.
*   **Community Gallery & Reviews**: A "Shot on this Lens" feature where verified buyers upload sample images, providing social proof and real-world performance examples.
*   **Automated Payment Gateway**: Integration with Stripe/Razorpay to replace the manual verification process, enabling instant order confirmation.
*   **Gear Rental Calendar**: A booking system for high-end equipment rentals, catering to professionals who need specific gear for one-off shoots.

### 14.2 Technical Enhancements
*   **Migration to Next.js (SSR)**: Moving from Vite to Next.js to enable Server-Side Rendering, crucial for SEO ranking on specific camera model keywords.
*   **Redis Caching**: Implementing Redis to cache product queries, ensuring sub-100ms response times even during high-traffic launches.
*   **AI-Driven Recommendations**: Using vector search to recommend distinct accessories based on the camera body in the cart (e.g., suggesting the correct SD card speed class for a 8K camera).

### 14.3 General Enhancement Goals
*   **Scalability**: Ensuring the platform can handle increased traffic and larger inventory databases without performance degradation.
*   **User Retention**: Implementing features that incite users to return, such as loyalty programs and personalized content.
*   **Operational Efficiency**: Automating backend processes to reduce manual workload for the administration.
*   **Mobile Optimization**: Focusing on a mobile-first approach to cater to the growing number of users shopping via smartphones.
