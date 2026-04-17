# Invoice Ninja — Complete Usage Guide
### Microhard Agency Finance System

---

## Table of Contents

1. [What Invoice Ninja Is — The Mental Model](#1-what-invoice-ninja-is)
2. [First-Time Setup — Do This Before Anything Else](#2-first-time-setup)
3. [The Building Blocks — Every Concept Explained](#3-the-building-blocks)
4. [Clients — Your Agency's Client List](#4-clients)
5. [Invoices — How You Get Paid](#5-invoices)
6. [Recurring Invoices — For Monthly Retainers](#6-recurring-invoices)
7. [Expenses — What You Spend](#7-expenses)
8. [Payments — Recording What You Received](#8-payments)
9. [Reports — Your Financial Picture](#9-reports)
10. [Monthly Workflow — The Finance Rhythm](#10-monthly-workflow)
11. [Quick Reference — When to Use What](#11-quick-reference)

---

## 1. What Invoice Ninja Is

Invoice Ninja is your **business finance tool**. It handles one side of your business that Plane doesn't touch: **money**.

Plane tracks your work. Invoice Ninja tracks your revenue.

Here's how they connect:
- In Plane, you deliver work for RollandAssurance (Lead Gen, SEO, Content)
- At the end of the month, you open Invoice Ninja, create an invoice for what you delivered, and send it to the client
- The client pays → you record the payment → Invoice Ninja shows you the money received

Without a tool like this, you end up doing invoices in Word, forgetting to follow up on late payments, not knowing your monthly revenue, and having no record for tax time. Invoice Ninja solves all of that.

**What you specifically use it for:**
- Send monthly retainer invoices to RollandAssurance and LesLions
- Track who has paid and who owes you money
- Record your business expenses (ad spend, tools, subscriptions)
- Generate revenue reports for any period
- Keep a professional financial record

---

## 2. First-Time Setup

Do these steps once before using Invoice Ninja for real work.

### Step 1 — Company Settings

Go to **Settings → Company Details**

Fill in:
- **Company Name:** Microhard Agency (or your legal business name)
- **Email:** your business email
- **Phone:** optional
- **Website:** optional
- **Address:** your business address (appears on invoices)
- **VAT/Tax Number:** if you have one

**Why this matters:** everything you fill in here appears on every invoice you send. Clients see this. Make it accurate.

### Step 2 — Your Logo

Go to **Settings → Company Details → Logo**

Upload your agency logo. It appears at the top of every invoice PDF. Clients receive branded, professional invoices instead of generic ones.

### Step 3 — Currency

Go to **Settings → Localization**

- Set **Currency** to yours (EUR, USD, MAD — whatever you invoice in)
- Set **Date Format** to your preference
- Set **Language** if needed

**Critical:** set this before creating any invoices. Changing currency after the fact doesn't update existing invoices.

### Step 4 — Invoice Design

Go to **Settings → Invoice Design**

- Pick a template (Clean, Modern, Bold — try them, pick what looks professional)
- Set your default **Payment Terms** (e.g., "Net 30" = client has 30 days to pay)
- Set **Invoice Number Prefix** (e.g., `MA-` → your invoices will be MA-0001, MA-0002...)

### Step 5 — Tax Rates (if applicable)

Go to **Settings → Tax Rates → Add Tax Rate**

If you charge VAT or any tax on your services, configure it here once and it applies automatically to invoices. If you don't charge tax, skip this.

### Step 6 — Email Settings

Go to **Settings → Email Settings**

This controls what email Invoice Ninja sends when you email an invoice to a client.
- Customize the email subject line
- Customize the body message (keep it professional and brief)
- Your outgoing email goes through your own SMTP or the default system

---

## 3. The Building Blocks

### Clients
**Your client list.** Each client has a name, contact person, email, address, and currency. You create one client entry per client — everything (invoices, payments, history) is attached to them.

### Invoices
**The document you send to get paid.** An invoice lists what you delivered, at what price, and when payment is due. It has a status:
- **Draft** — being prepared, not sent yet
- **Sent** — emailed to client, waiting for payment
- **Partial** — client paid part of it
- **Paid** — fully paid
- **Overdue** — past due date, not paid
- **Cancelled** — voided

### Quotes (Estimates)
**A price proposal before the work starts.** You send a quote to a new client saying "here's what I'll deliver and what it costs." When they approve it, you convert it to an invoice with one click.

### Recurring Invoices
**Auto-generated invoices on a schedule.** If RollandAssurance pays you €2,000/month for a retainer, you set up a recurring invoice once and Invoice Ninja generates and sends it every month automatically. You never have to remember to invoice a retainer client.

### Payments
**Recording money received.** When a client pays, you log the payment against their invoice. This marks the invoice as Paid and updates your revenue numbers.

### Expenses
**Money you spend running the business.** Google Ads budget you paid upfront for a client, Canva subscription, hosting costs, software tools. Track these so you know your actual profit (revenue minus expenses).

### Products / Services
**Your service catalog.** Define your services once:
- "Google Ads Management — Monthly Retainer"
- "SEO & Content Package"
- "Landing Page Development"

When creating an invoice, you select from this list instead of typing it every time. Keeps your invoices consistent and saves time.

---

## 4. Clients

### Creating a client

Go to **Clients → New Client**

Fill in:
- **Name:** RollandAssurance (company name)
- **Contact First/Last Name:** your contact person at the company
- **Email:** their billing email (where invoices get sent)
- **Phone:** optional
- **Address:** their company address (appears on the invoice)
- **Currency:** the currency you invoice them in

Create one client for each: RollandAssurance and LesLions.

### Client portal

Each client gets access to a **client portal** — a private URL where they can:
- See all their invoices
- Download PDFs
- Pay online (if you set up a payment gateway)
- See their payment history

You don't have to use this, but it's professional. Clients can always access their invoice history without emailing you.

### Client overview

Click on a client to see their full history:
- All invoices ever sent
- All payments received
- Outstanding balance
- Total revenue from this client over any period

This answers "how much has RollandAssurance paid me total this year?" in one click.

---

## 5. Invoices

### Creating an invoice

Go to **Invoices → New Invoice**

1. **Select the client** (RollandAssurance or LesLions)
2. **Set the invoice date** (today)
3. **Set the due date** (e.g., 30 days from now)
4. **Add line items** — each service you're billing for:
   - Description: "Google Ads Management — April 2026"
   - Quantity: 1
   - Unit Price: 2000 (or whatever you charge)
   - Tax: select your tax rate if applicable
5. **Add notes** (optional) — e.g., "Thank you for your business. Please transfer to..."
6. **Save**

At this point the invoice is a **Draft**. Review it, then:
- Click **Send** to email it directly to the client
- Or click **Download PDF** to send it yourself

### Invoice line items — be specific

Bad line item:
> "Services — April" → €2,000

Good line items:
> "Google Ads Campaign Management — April 2026" → €800
> "SEO & Content (4 articles + technical audit) — April 2026" → €700
> "Landing Page Development — RollandAssurance Home Page" → €500

Specific line items = fewer client questions = faster payments.

### Following up on unpaid invoices

Go to **Invoices** → filter by **Overdue**

Invoice Ninja can send automatic payment reminders:
- Go to **Settings → Reminders**
- Set up: "Send reminder 7 days after due date" and "Send reminder 14 days after due date"
- This happens automatically — you don't have to chase clients manually

### Recording a payment manually

When a client pays via bank transfer:
1. Open the invoice
2. Click **Enter Payment**
3. Enter the amount and date received
4. Select payment method (bank transfer, cash, etc.)
5. Save → invoice status changes to **Paid**

---

## 6. Recurring Invoices

This is the most powerful feature for a retainer-based agency.

### Setting up a recurring invoice

Go to **Invoices → Recurring → New Recurring Invoice**

1. Select the client
2. Add the line items (your monthly retainer services)
3. Set **Frequency:** Monthly
4. Set **Start Date:** first day of next month
5. Set **Send Email:** Yes (auto-sends to client every month)
6. Save

From now on, every month Invoice Ninja automatically:
- Generates the invoice
- Emails it to the client
- Tracks whether they've paid

You set it up once. You never manually create that invoice again.

### When to use recurring vs manual invoices

| Use recurring | Use manual |
|---------------|------------|
| Monthly retainer (fixed amount) | One-off project |
| Ongoing service at fixed price | Variable monthly work |
| Subscription-style engagement | First invoice for a new client |

---

## 7. Expenses

### What to track as expenses

- **Ad spend paid upfront:** if you front the Google Ads budget and get reimbursed, log it as an expense under the client
- **Software tools:** Canva, Ahrefs, SEMrush, any tool you use for the business
- **Freelancers:** if you subcontract any work
- **Equipment:** laptop, microphone, anything business-related

### Creating an expense

Go to **Expenses → New Expense**

- **Vendor:** who you paid (Google, Canva, etc.)
- **Amount:** what you paid
- **Category:** Software, Advertising, Contractor, etc.
- **Client:** attach to a client if it's a client-specific expense (e.g., their ad spend)
- **Date:** when you paid it

### Why track expenses

At the end of the month:
- Revenue: €5,000 (from invoices paid)
- Expenses: €800 (tools + ad spend)
- **Profit: €4,200**

Without tracking expenses, you only see revenue. You don't see actual profit. And at tax time, you need expense records to claim deductions.

---

## 8. Payments

### The payment flow

```
Invoice created (Draft)
    ↓
Invoice sent to client (Sent)
    ↓
Client pays (bank transfer, etc.)
    ↓
You record the payment in Invoice Ninja (Paid)
    ↓
Revenue appears in your reports
```

### Payment gateways (optional)

Invoice Ninja supports online payment buttons on invoices (Stripe, PayPal, etc.). If you set one up:
- Client receives invoice with a "Pay Now" button
- They pay by card
- Invoice Ninja automatically marks it paid

For a small agency, bank transfer is usually standard. But if a client prefers card, this is how you enable it:
- Go to **Settings → Payment Gateways → Add Gateway**
- Connect Stripe (most common)

---

## 9. Reports

Go to **Reports** in the left sidebar.

### Reports you'll use monthly

| Report | What it shows | When to run |
|--------|---------------|-------------|
| **Invoice Summary** | All invoices by status, total billed | End of month |
| **Payment Report** | All payments received, by client | End of month |
| **Client Report** | Revenue per client | Quarterly |
| **Expense Report** | All expenses by category | Tax time / monthly |
| **Profit & Loss** | Revenue minus expenses | Monthly |

### The two numbers that matter

Every month, you want to know:
1. **Billed:** total invoiced this month (what you're owed)
2. **Collected:** total payments received this month (what you have)

These are different. You might bill €5,000 in April but only collect €3,500 if one client is late. The gap tells you who to follow up with.

---

## 10. Monthly Workflow

### Start of month (day 1-3)

1. **Generate invoices** for all clients (or let recurring invoices auto-send)
2. Review each invoice — correct any amounts for variable work
3. Send all invoices

### Mid-month (day 15)

1. Check **Invoices → Sent** — who has paid, who hasn't?
2. Follow up manually with anyone who hasn't paid the previous month's invoice
3. Invoice Ninja auto-reminders should have already sent once

### End of month (last 2 days)

1. **Record all payments received** — mark invoices as Paid
2. **Log all expenses** from the month
3. Run the **Profit & Loss report** — know your numbers
4. Archive the month: export or screenshot your P&L

### Quarterly (every 3 months)

1. Run **Client Report** — which client generates the most revenue?
2. Review your service pricing — are you charging enough?
3. Export data for accountant / tax prep

---

## 11. Quick Reference

| I want to... | Go to... |
|-------------|----------|
| Bill a client | Invoices → New Invoice |
| Set up auto-monthly billing | Invoices → Recurring → New |
| Record a payment I received | Open invoice → Enter Payment |
| See who owes me money | Invoices → filter: Overdue |
| Add a new client | Clients → New Client |
| Log a business expense | Expenses → New Expense |
| See monthly revenue | Reports → Payment Report |
| See profit this month | Reports → Profit & Loss |
| Send a price proposal | Quotes → New Quote |
| See one client's full history | Clients → click client name |

---

## Your Setup Checklist

Before sending your first invoice, complete these:

- [ ] Company name, address, email filled in (Settings → Company Details)
- [ ] Logo uploaded
- [ ] Currency set correctly (Settings → Localization)
- [ ] Invoice number prefix set (e.g., `MA-`)
- [ ] Payment terms set (e.g., Net 30)
- [ ] Create client: RollandAssurance (with billing email)
- [ ] Create client: LesLions (with billing email)
- [ ] Define your services in Products (Settings → Products)
- [ ] Set up recurring invoices for any monthly retainers
- [ ] Configure payment reminders (Settings → Reminders)

---

## Access

- **URL:** http://localhost:38080
- **Email:** outemgountimad1m@gmail.com
- **Password:** Admin@12345 ← change this in Settings → Your Profile
