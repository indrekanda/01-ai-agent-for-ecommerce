# AI Project Canvas

- **Prepared by:** Indre <br>
- **Prepared for:** Client (owner of a global distribution network) <br> 
- **Date:** 2002-06-29 <br>
- **Version:** 1.0 <br>

---

### Problem Statement

**For customer:**
Traditional e-commerce websites offer a static and impersonal shopping experience. Customers struggle with inefficient keyword-based search, have difficulty comparing complex technical specifications of electronics, and lack a guided, conversational way to discover products. Users with a list of required items, such as for a project or a business order, face the tedious task of searching for and adding each item individually. This leads to decision fatigue, frustrating user experience, high cart abandonment rates, and missed sales opportunities. 

**For seller (?):**
Without an intelligent, autonomous system, managing inventory is a reactive process, creating constant risks of overselling popular items or accumulating costly excess stock. Similarly, achieving true logistical optimization—from coordinating stock booking to planning efficient delivery routes—is a multi-variable problem that surpasses the capabilities of standard tools, making peak efficiency elusive. This operational complexity creates a significant management burden, making it difficult to prevent revenue loss from inefficient promotions or customer dissatisfaction from delivery delays. The challenge is to transform these complex operations into a streamlined, optimized workflow that can be managed by a single person empowered by an intelligent AI co-pilot.

**The AI powered solution:**
A unified AI powered system can address both sides of this marketplace. For customers, it acts as a personal shopping adviser that understands natural language, processes bulk requests, and guides them from discovery to checkout. For sellers, it becomes an intelligent operational co-pilot, automating inventory monitoring, optimizing logistics, and enabling dynamic, data-driven promotions to improve efficiency and maximize revenue.

---

### Data & Knowledge

The client offers 1000 items from Electronics category.

Available data:
1.  **Item metadata:** product specifications data with key fields: `title`, `description`, `features`, `price`, `average_rating`, `images`, and `details`.
2.  **User rviews:** user ratings and reviews data with key fields: `rating`, `text`, `helpful_vote`, and `verified_purchase`.
3. **Other expected (to be integrated):** inventory, warehouse location, ...

---

### Performance Metrics & Evaluation Rules

(draft ideas, I guess we will only have technical)

**Strategic metric (North Star Metric - NSM)**
**Total revenue**: Euros per month.

**Supporting metrics**
1. **Technical**
   - Cost (Eur/ tokens per session, per transaction, vasted)
   - TTPT
   - Latency
   - Accuracy
   - Feedback about agent (we will collect it)
2. **Operational**
   - Time from first contact to puchase 
   - % of cart abandonment
   - % of conversations that result in a purchase (conversion)
   - service cost / transactions
   - unfulfilled demand (not gained revenues)
3. **User / Business**
   - Repeated purchases
   - Overall feedback about whole process (NPS)
   - Number of unique active users; churn %

**Actionable objectives & key results (OKRs)**

(I will add gradually)

**Objective:** Develop smart search <br>
**Key results:**
   - ...

**Objective:** Develop Q&A about products<br>
**Key results:**
   - ...


---

### Resources & Stakeholders

(not sure yet)

**Resources:**
- **Technical:** LLM API access, ...
- **Human:** 1 AI/ML Engineer.

---

### Deployment & Integration

A phased, iterative deployment is planned. (not sure yet)

1.  **Initial Deployment:** Demo for testing and experimenting
2.  **Adding new features:** Increase functionality with time
3.  **Monitoring:** Monitoring dashboard for system performance, API costs, latency...
4.  **CI/CD:** A pipeline for continuous integration and deployment

---

### Risks & Mitigation

**Factual inaccuracy (hallucination):**  (eg)
   - **Risk:** AI invents or misrepresents product specifications.
   - **Mitigation:** Enforce a strict RAG pattern with strong grounding prompts and implement a self-critique chain...

**Ineffective Tool Use:** (eg)
   -  **Risk:** AI fails to add items to cart or check availability correctly.
   - **Mitigation:** Develop clear tool descriptions and a robust validation/error-handling layer for API calls...

**High Operational Cost:** (eg)
   - **Risk:** LLM API calls become prohibitively expensive.
   - **Mitigation:** Implement intelligent caching and use smaller, fine-tuned models for simple tasks...

---

### AI Approach & Methodology
 The solution will be built as an evolving AI agent system.
 *   **Phase 1 (Core RAG):** Develop a RAG system for basic Q&A, smart search, and product comparisons.
 *   **Phase 2 (Agent with tools):** Evolve the RAG system into an agent that can use tools to perform actions like `check_availability`, `add_to_cart`, and `predict_delivery`.
 *   **Phase 3 (Multi-agent system):** Decompose the system into specialized agents, eg.: a Customer Agent, Product Expert Agent, Logistics Agent, Order Agent...


#### Functions 

(ideas, TODO: add images)

**Phase 1: Core customer experience - information & selection**
(Focus: Helping customers find and decide on the right products.)

1. Conversational product search: Allow users to find products by describing what they need in natural language (e.g., "I need a quiet laptop for video editing under $1500").
2. Product Q&A: Answer specific user questions about a product's features, specifications, or compatibility using the provided product data (e.g., "Does this monitor have an HDMI 2.1 port?").
3. Product comparison: Allow users to ask to compare two or more products side-by-side on key features.
4. Personalized recommendations: Suggest relevant products based on the user's current conversation, past purchases, or items they are viewing.

**Phase 2: Transactional customer experience - convenience & action**
(Focus: Making the process of buying and managing orders effortless for the customer.)

5. Shopping cart management: Allow users to add or remove items from their shopping cart using text commands.
6. Real-time stock & availability check: Inform the user if a product is in stock and where it's located.
7. Delivery time estimation: Predict the estimated delivery date for an item based on the user's location and stock availability.
8. Conflict & shortage resolution: If an item is out of stock or there's a delivery conflict, the AI should automatically suggest suitable alternatives or different shipping options.
9. Bulk order from a file: Enable users (especially B2B customers) to upload a file (like a PDF or CSV) with a list of items and quantities, which the AI will automatically parse and add to the cart.

**Phase 3: Seller-side operations & intelligence**
(Focus: Empowering the seller to manage logistics and operations efficiently.)

10. Intelligent inventory monitoring: Provide the seller with a conversational interface to check stock levels, receive alerts for low-stock items, and get predictions on when to reorder.
11. Automated stock booking: When an order is placed, automatically reserve the items from the correct warehouse inventory.
12. Delivery route optimization: For a batch of daily orders, calculate the most efficient delivery route.

**Phase 4: Advanced & Proactive Features**
(Focus: Adding proactive and other features that enhance marketing and customer service.)

13. Dynamic marketing & promotions: Automatically offer targeted promotions to users (e.g., "As our 100th customer today, you get a 10% discount!").
14. Proactive customer service: If the system predicts a potential delivery delay, it can proactively inform the customer and offer a small discount or an alternative as a goodwill gesture.
15. Order status & tracking: Allow both customers and sellers to ask for the real-time status and location of any order.
16. Automated return & support inquiries: Handle initial customer queries about returns, warranties, or basic troubleshooting, reducing the load on human support.

---

###  Timeline & Milestones
- Week 1 | Jun 23—Jun 29 | Sprint 0 – Problem Framing & Infrastructure Setup
- Week 2 | Jun 30—Jul 6  | Sprint 1 – Build the First Working RAG Prototype
- Week 3 | Jul 7—Jul 13  | Sprint 2 – Retrieval Quality & Prompt Engineering
- Week 4 | Jul 14—Jul 20 | Sprint 3 – Moving From Basic To Agentic RAG
- Week 5 | Jul 21—Jul 27 | Sprint 4 – Agents & Agentic Systems
>        | Jul 28 - Aug 11: OOF |
- Week 6*| Jul 28—Aug 3  | Sprint 5 – Multi-Agent Systems
- Week 7*| Aug 4—Aug 10  | Sprint 6 – Deployment, Optimization and Reliability
- Week 8*| Aug 11—Aug 17 | Sprint 7 – Final Demo & Capstone Delivery
`*` +2-3 weeks