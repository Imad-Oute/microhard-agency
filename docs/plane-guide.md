# Plane — Complete Usage Guide
### Microhard Agency Architecture

---

## Table of Contents

1. [What Plane Is — The Mental Model](#1-what-plane-is)
2. [The Building Blocks — Every Concept Explained](#2-the-building-blocks)
3. [Your Architecture — How It's Set Up](#3-your-architecture)
4. [Issues — The Core Unit of Work](#4-issues)
5. [Modules — Your Three Departments](#5-modules)
6. [Cycles — Your Weekly Engine](#6-cycles)
7. [Views — Your Personal Dashboards](#7-views)
8. [Pages — Your In-Plane Notes](#8-pages)
9. [Daily Workflow — How to Actually Use This](#9-daily-workflow)
10. [Weekly Workflow — The Rhythm](#10-weekly-workflow)
11. [Per-Project Workflow — Client Work](#11-per-project-workflow)
12. [When to Use What — Decision Reference](#12-when-to-use-what)
13. [God Mode — Instance Administration](#13-god-mode)

---

## 1. What Plane Is

Plane is a **project management system**. Its job is to answer three questions at any moment:

- **What needs to be done?** (all work, backlogged or active)
- **What am I doing right now?** (this week's focus)
- **What did I deliver?** (completed work, per project, per department)

It is NOT a calendar, NOT a CRM, NOT a document editor. It is a structured container for **work items** (called Issues) organized by project, department, and time.

The reason you use it instead of a to-do list or Notion: **it forces you to define the state, priority, and context of every piece of work**. When you're running three departments across two clients alone, this structure is what keeps you from losing track.

---

## 2. The Building Blocks

Every concept in Plane stacks on top of the previous one.

### Workspace
The top level. Your entire agency lives in one workspace: **Microhard Agency**.
Everything — all projects, all members, all settings — lives inside this workspace.
You only ever have one workspace as a solo operator.

### Projects
**Projects are your clients (or your agency itself).**
You have three:
- `RollandAssurance` — active client
- `LesLions` — active client
- `_Template` — blueprint for future clients

A project is the boundary of a client engagement. All work, files, and discussions related to one client stay inside their project. You never mix client work across projects.

### Issues
**Issues are the atomic unit of work.** Everything you do becomes an issue.
- Write a blog post → issue
- Set up a Google Ads campaign → issue
- Fix a broken landing page → issue
- Have a client call → issue

An issue has: a title, a state, a priority, a label, a module, a cycle, a due date, and a description. You fill in what's relevant, leave the rest empty.

### States
**States are the lifecycle of an issue** — where it is in the workflow right now.

| State | Meaning |
|-------|---------|
| **Backlog** | Exists, not scheduled yet. Ideas, future work, someday. |
| **Todo** | Scheduled, not started. It's on your plate this cycle. |
| **In Progress** | You are actively working on it right now. |
| **In Review** | Done on your end, waiting for client feedback or your own QA. |
| **Done** | Complete. Closed. |

**Rule:** Only move an issue to In Progress when you're literally working on it today. Don't use it as "planned." That's what Todo is for.

### Labels
**Labels describe what type of work the issue is.** They cut across all departments.

| Label | Use for |
|-------|---------|
| **Campaign** | Google Ads campaigns, ad sets, ad copy, bidding changes |
| **Landing Page** | Page design, copy, A/B tests, CRO work |
| **Content** | Blog posts, social posts, videos, copy |
| **Report** | Monthly reports, analytics reviews, client updates |
| **Fix** | Bug fixes, broken links, technical issues |
| **Call** | Client calls, meetings, check-ins |

Labels answer "what kind of thing is this?" — Modules answer "which department owns it?"

### Priority
Built-in, four levels: **Urgent / High / Medium / Low**

- **Urgent** — blocking something, client is waiting, deadline today
- **High** — this week, important
- **Medium** — this cycle, normal work
- **Low** — nice to have, no deadline pressure

**Rule:** If everything is Urgent, nothing is. Maximum 2 Urgent issues at any time.

### Modules
**Modules are your three departments within each project.**
- 🎯 Lead Generation
- 🌐 SEO & Web Dev
- 📝 Content Creation

Every issue belongs to exactly one module. A module gives you a department-level view: "what is my entire Google Ads workload for RollandAssurance?"

Modules in Plane can also have start/end dates and a status (in-progress, completed, paused). You can use this to mark a department as "paused" for a client if you're not doing that service for them right now.

### Cycles
**Cycles are time-boxed sprints — your weekly focus.**
A cycle is a container that says: "these are the issues I am committing to completing this week."

You create a new cycle every Monday. You drag issues from Backlog/Todo into the active cycle. At the end of the week, incomplete issues auto-transfer to the next cycle.

Cycles are per-project. RollandAssurance has its own weekly cycle. LesLions has its own.

### Views
**Views are saved filters — your personal dashboards.**
Example views you'd create:
- "All Urgent issues across all projects"
- "Everything In Progress right now"
- "RollandAssurance — Lead Gen only"
- "This week's calls and reports"

Views don't create or move work. They just show you a lens into existing issues.

### Pages
**Pages are Plane's built-in note editor.**
Use Pages for: meeting notes, client briefs, campaign strategy docs, SOPs.
Pages live inside a project, so a client brief for RollandAssurance lives inside the RA project, not in a random Notion doc.

---

## 3. Your Architecture

```
Microhard Agency (Workspace)
│
├── RollandAssurance (Project — identifier: RA)
│   ├── Modules
│   │   ├── 🎯 Lead Generation
│   │   ├── 🌐 SEO & Web Dev
│   │   └── 📝 Content Creation
│   ├── States:  Backlog → Todo → In Progress → In Review → Done
│   ├── Labels:  Campaign · Landing Page · Content · Report · Fix · Call
│   └── Cycles:  Weekly (create every Monday)
│
├── LesLions (Project — identifier: LL)
│   ├── Modules
│   │   ├── 🎯 Lead Generation
│   │   ├── 🌐 SEO & Web Dev
│   │   └── 📝 Content Creation
│   ├── States:  Backlog → Todo → In Progress → In Review → Done
│   ├── Labels:  Campaign · Landing Page · Content · Report · Fix · Call
│   └── Cycles:  Weekly (create every Monday)
│
└── _Template (Project — identifier: TPL)
    ├── (Identical structure — clone for every new client)
    └── (Keep empty — this is your blueprint)
```

### The identifier system

Every issue gets an auto-assigned ID: `RA-1`, `RA-2`, `LL-1`, `LL-2`, etc.
These IDs are permanent and searchable. Use them when referencing work in client emails, reports, or Slack/Discord messages. "RA-47 is done" means something specific to you.

---

## 4. Issues

### Creating an issue

**Keyboard shortcut: `C`** anywhere in a project creates a new issue.

Minimum viable issue (takes 10 seconds):
- Title (clear action verb: "Write Q1 performance report", "Fix broken CTA button")
- State: Backlog (default) or Todo
- Priority
- Label
- Module

You don't need a description for simple tasks. Add one when the work has steps, context, or needs to be referenced later.

### Issue titles — the rule

Write titles as **completed actions**, not topics.
- ❌ "Google Ads" 
- ✅ "Launch April retargeting campaign for RA"
- ❌ "Blog"
- ✅ "Write 1500-word SEO article on insurance comparisons"

When you look at a Done issue in 3 months, the title should tell you exactly what was delivered.

### Sub-issues

Break complex work into sub-issues. Example:
```
Parent: Launch April retargeting campaign (RA-23)
  ├── Sub: Create audience segments (RA-24)
  ├── Sub: Write 3 ad variations (RA-25)
  └── Sub: Set up conversion tracking (RA-26)
```

Use sub-issues when a piece of work has 3+ distinct steps that might span multiple days.

### Issue description

Use the description for:
- Acceptance criteria ("this is done when...")
- Links to relevant docs, ads accounts, client briefs
- Notes from client calls
- Paste in screenshots, performance data

The description editor supports markdown, embeds, and file uploads (stored in MinIO).

---

## 5. Modules

### How to use modules day-to-day

Modules are your **department view**. When you sit down to do Lead Gen work, you open the Lead Generation module and see all Lead Gen issues for that client — regardless of their state.

**Filtering by module gives you the full backlog for one department:**
- What's done in Lead Gen for RollandAssurance this month?
- What's queued up in Content Creation for LesLions?
- What's the total SEO workload across both clients?

### Module status

Update module status when the engagement changes:
- `in-progress` — actively delivering this service
- `paused` — temporarily not doing this service for this client
- `completed` — this service engagement is over

### What goes where

| Work type | Module |
|-----------|--------|
| Google Ads campaigns, ad copy, bidding, audiences | 🎯 Lead Generation |
| Website pages, SEO audits, technical fixes, landing pages | 🌐 SEO & Web Dev |
| Blog posts, social content, email copy, video scripts | 📝 Content Creation |

If a task spans two departments (e.g., write copy FOR a landing page), assign it to the department that **owns the deliverable**. The landing page is owned by SEO & Web Dev, so the copy task that blocks it lives there too.

---

## 6. Cycles

### Setting up your first cycle

1. In a project, go to **Cycles** in the left sidebar
2. Click **Add Cycle**
3. Name it: `Week 17 — Apr 21` (use week number + date)
4. Set start: Monday, end: Sunday
5. Add issues from Backlog/Todo that you plan to complete this week

### The Monday ritual (15 minutes)

Every Monday morning, before you start working:

1. **Close last week's cycle** — mark it complete
2. **Review what didn't get done** — incomplete issues auto-transfer, or manually move them
3. **Create this week's cycle** for each active project
4. **Populate the cycle** — pull from Backlog/Todo, max 8-10 issues per project per week
5. **Set priorities** — mark 1-2 issues Urgent per project

This ritual is what turns Plane from a parking lot into an actual work engine.

### The capacity rule

Solo operator running 2 clients × 3 departments: **aim for 6-8 issues per client per week**.
More than 10 issues/week/client means you're over-committing. Issues will roll over and accumulate, making every Monday demoralizing.

Better to complete 6 issues than to half-finish 12.

### Cycle analytics

After a few weeks, Plane shows you a **burndown chart** per cycle. This tells you:
- Are you consistently completing what you commit to?
- Which department is always over-running?
- Are you under-scoping or over-scoping?

Use this data to calibrate your weekly commitment.

---

## 7. Views

### Creating a view

Go to **Views** in the left sidebar → **Add View** → set filters → save.

### Views to create right now

**Workspace-level views** (across all projects):

| View name | Filters |
|-----------|---------|
| 🔥 Active Right Now | State = In Progress |
| 📋 This Week | Cycle = Active, all projects |
| ⚡ Urgent | Priority = Urgent |
| 📞 Calls & Reports | Label = Call OR Report |

**Project-level views** (inside RA or LL):

| View name | Filters |
|-----------|---------|
| Lead Gen Backlog | Module = Lead Generation, State = Backlog |
| Content Queue | Module = Content Creation, State = Todo or Backlog |
| In Review — Client | State = In Review |

### When to use views vs modules

- **Module** = "show me all Lead Gen work for this client, all time"
- **View** = "show me what I'm doing in Lead Gen this week"
- **Cycle** = "show me everything I committed to completing this week"

They overlap on purpose. Use whichever lens fits the question you're asking.

---

## 8. Pages

### What Pages are for

Pages = living documents attached to a project.
They replace the habit of keeping client notes in random Google Docs or Notion pages.

### Pages to create per project

Inside **RollandAssurance** and **LesLions**, create these pages:

| Page | Content |
|------|---------|
| `Client Brief` | Who they are, what they sell, ICP, brand voice, key contacts |
| `Google Ads Account` | Account ID, campaigns structure, budget, goals, ROAS targets |
| `SEO Notes` | Target keywords, site audit findings, backlink strategy |
| `Content Calendar` | Monthly content plan, topics, deadlines |
| `Meeting Notes` | Running log of every client call (date + key decisions) |

### Pages vs issue descriptions

- **Issue description** = what THIS specific task needs and how to do it
- **Page** = strategic context, evergreen reference, briefs, SOPs

If you'd need the information for multiple issues, it's a Page.
If it only applies to one task, it's an issue description.

---

## 9. Daily Workflow

### Morning (5 minutes)

1. Open Plane → go to your **"Active Right Now"** view
2. If there's nothing In Progress, pick one issue from your active cycle and move it to In Progress
3. **One issue In Progress at a time.** Resist the urge to mark 5 things In Progress.

### During the day

- When you start a task: move to **In Progress**
- When you finish: move to **In Review** (if client needs to see it) or **Done** (if it's internal)
- When you discover new work: create a new issue, put it in Backlog
- When a client asks for something: create an issue immediately, don't hold it in your head

### End of day (3 minutes)

1. Anything you won't finish today: move back to **Todo**
2. Anything done: move to **Done**
3. Add notes to any in-progress issues about where you left off
4. Nothing should stay In Progress overnight unless you'll finish it first thing tomorrow

### The most important habit

**Create an issue for everything.** Client sends a WhatsApp voice note asking for a report? Create an issue. You notice the landing page button is broken? Create an issue. You have an idea for a new campaign? Create an issue in Backlog.

Your brain is for thinking, not remembering. Plane remembers.

---

## 10. Weekly Workflow

### Monday — Plan (15 min)

1. Close last week's cycles (both RA and LL)
2. Review what rolled over — is it still relevant? Delete or keep?
3. Create new cycles for the week
4. Pull 6-8 issues per project into each cycle
5. Set 1-2 Urgent issues per project

### Wednesday — Mid-week check (5 min)

1. Are you on track to finish this week's cycle?
2. Any blockers? Note them in the issue description
3. Anything new and urgent that needs to displace something in the cycle?

### Friday — Close & Review (10 min)

1. Move everything finished to Done
2. Add any incomplete issues back to Backlog with a note
3. Check both projects' cycle completion rate
4. Quick look at what's in Backlog for next week

### Monthly — Reporting cycle

On the last Friday of each month:
1. Create a "Monthly Report" issue (Label: Report) in each project
2. Pull the Done issues from the past month as your deliverables list
3. Plane's analytics tab shows you issues completed per month per project
4. Use this data to write the client report

---

## 11. Per-Project Workflow

### Starting work on a client project

When you onboard a new client:
1. Copy the **_Template** project (currently: create new project and replicate structure)
2. Name it, set the identifier (e.g., `ACME` → identifier `AC`)
3. Create a **Client Brief** Page immediately
4. Create 3-5 discovery/setup issues in Backlog (one per key first action)
5. Create the first weekly cycle

### Lead Generation (Google Ads) workflow

Typical issue flow for a campaign:

```
[Backlog] Research competitor ads → 
[Todo] Define audience segments → 
[In Progress] Write ad copy (3 variations) → 
[In Review] Client approval on copy → 
[In Progress] Set up campaign in Google Ads → 
[In Review] Internal QA / tracking check → 
[Done] Campaign live ✓
```

Recurring issues to keep in your cycle:
- Weekly performance check (every Monday)
- Budget pacing review (every Wednesday)
- Monthly performance report (last week of month)

### SEO & Web Dev workflow

SEO is slow and cumulative. Use Backlog heavily here.

Structure your SEO backlog as a content/technical audit list:
- 1 technical fix per week (from your audit backlog)
- 1-2 content pieces per week
- 1 monthly SEO report

Landing page work lives here because a landing page is a web deliverable, even if it supports a campaign. The issue that says "build retargeting landing page" goes in SEO & Web Dev. The issue that says "set up retargeting campaign pointing to that page" goes in Lead Generation.

### Content Creation workflow

Content is volume work. Keep a dedicated **Content Queue** view filtered to:
- Module = Content Creation
- State = Todo or In Progress

For each content piece:
```
[Backlog] Content idea / topic brief →
[Todo] Scheduled for this week →
[In Progress] Writing / creating →
[In Review] Client review / your own QA →
[Done] Published ✓
```

Add the live URL and publish date to the issue description when done. This becomes your content archive.

---

## 12. When to Use What — Decision Reference

### "I need to do something new" → Create an Issue

Always start here. Give it a title, pick a label and module, put it in Backlog.

### "I want to see all my work for one client" → Open the Project

Click on RollandAssurance or LesLions. The project issues view shows everything.

### "I want to see all work for one department" → Open a Module

Go to Modules → click Lead Generation. See all Lead Gen issues for that client, all states.

### "I want to see what I'm doing THIS week" → Open active Cycle

Go to Cycles → current week. This is your weekly commitment list.

### "I want a cross-project view" → Use or create a View

Go to Views → pick a saved view or create one with the filters you need.

### "I need to write something down about this client" → Create a Page

Go to Pages inside the project → create/open the relevant page.

### "A task has multiple steps" → Create Sub-issues

Open the parent issue → add sub-issues. Link them to the same module and cycle.

### "I want to see how productive I've been" → Go to Analytics

Each project has an Analytics tab. Shows issues completed over time, by state, by label.

### "Something is urgent and needs attention today" → Set Priority = Urgent + move to active Cycle

Then your "Urgent" view will surface it immediately.

---

## 13. God Mode

God Mode (`http://localhost:33000/god-mode`) is the **instance administration panel**.
This is NOT where you manage your work. This is where you manage Plane itself.

### What you do in God Mode

| Task | When |
|------|------|
| Manage workspace members | If you ever add a team member or freelancer |
| Configure integrations | Setting up GitHub, email, or OAuth providers |
| Instance settings | Email configuration, signup controls |
| Monitor instance health | Check if anything is broken at the platform level |

### What you DON'T do in God Mode

- Create projects → do that in the workspace
- Manage issues → do that in projects
- Set up your workflow → do that in project settings

Your admin credentials:
- URL: `http://localhost:33000/god-mode`
- Email: `outemgountimad1m@gmail.com`
- Password: `Admin@12345` ← change this

---

## Quick Reference Card

| I want to... | Go to... |
|-------------|----------|
| Start my day | Views → "Active Right Now" |
| Plan my week | Cycles → Create new cycle |
| Add new work | Press `C` anywhere |
| See a client's full workload | Click on RA or LL project |
| See one department's work | Project → Modules → pick one |
| See what I'm doing this week | Project → Cycles → active |
| Find something specific | `Cmd/Ctrl + K` global search |
| Write client notes | Project → Pages |
| Check my output this month | Project → Analytics |
| Cross-project urgent view | Views → Urgent |

---

## Access

| Service | URL |
|---------|-----|
| Plane (your workspace) | http://localhost:33000 |
| God Mode (admin) | http://localhost:33000/god-mode |
| Invoice Ninja (invoicing) | http://localhost:38080 |
| MinIO Console (file storage) | http://localhost:39090 |
