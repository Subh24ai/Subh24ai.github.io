---
permalink: /
title: ""
excerpt: ""
author_profile: true
redirect_from:
  - /about/
  - /about.html
---

<span class='anchor' id='about-me'></span>

I'm a **GenAI Engineer at [PwC India](https://www.pwc.in/)**, where I build AI systems that have to be right in production. I architected a **LangGraph RAG system over a large enterprise contract portfolio** that routes each question across four retrieval engines (hybrid vector search, text-to-SQL, graph traversal, and map-reduce comparison) and checks every contractual claim against the retrieved evidence before it reaches the user. I also automate finance workflows with **Playwright**: chartered-accountant spreadsheet filling and purchase-requisition-to-purchase-order processing.

Before PwC, I was an **AI Engineer at Iwayplus** (IIT Delhi Incubation Centre), where I deployed and ran a **production RAG chatbot for a national institute** on GCP at under 2 s per response, cut its latency **60%**, and built the A\* indoor navigation engine used on campus.

Outside work I build **open-source agents end to end**: a multi-agent IT/HR ticket platform with evals in CI, and a fully offline Hindi–English voice assistant for government schemes running on a model I fine-tuned. I placed in the **top 12 of 118 teams** in the NCIIPC Startup India AI Grand Challenge (RAG retrieval).

<div class="rag-trace" markdown="0">
  <div class="rag-trace__head"><strong>How a question moves through my contract RAG system</strong><span>illustrative trace</span></div>
  <div class="rag-trace__q">Which contracts renewing next quarter have no termination-for-convenience clause, and who manages them?</div>
  <div class="rag-trace__row"><span>intent</span><span>compound question, split into 2 sub-queries</span></div>
  <div class="rag-trace__row"><span>disambiguate</span><span>“manages” resolved to the program-manager field</span></div>
  <div class="rag-trace__row"><span>route</span><span>text-to-SQL for dates and owners, hybrid vector search for clause text</span></div>
  <div class="rag-trace__row"><span>retrieve</span><span>63-column SQLite mirror, provenance attached per field</span></div>
  <div class="rag-trace__row"><span>ground: claim 1</span><span><em class="v v--pass">pass</em> renewal dates match the source records</span></div>
  <div class="rag-trace__row"><span>ground: claim 2</span><span><em class="v v--cav">needs caveat</em> one contract’s clause text is partial</span></div>
  <div class="rag-trace__row"><span>ground: claim 3</span><span><em class="v v--blk">blocked</em> unsupported statement removed from the answer</span></div>
  <div class="rag-trace__foot">3.7 s median response, 339 automated tests, span-level tracing on every node</div>
</div>

# 🔥 News

- _2026.10_: &nbsp;🎓 Earned **Claude Certified Architect – Professional** (Anthropic).
- _2026.06_: &nbsp;🎉 Joined **PwC India** as a **GenAI Engineer**.
- _2026.02_: &nbsp;📜 Completed IBM's **Generative AI Engineering with LLMs** specialization.
- _2025.02_: &nbsp;🎉 Joined **Iwayplus** (IIT Delhi Incubation Centre) as an **AI Engineer**.
<!-- Add the NCIIPC and Apollo Solvathon results here once you've confirmed the month -->

# 💼 Experience

- **GenAI Engineer**, [PwC India](https://www.pwc.in/) · Gurugram · _Jun 2026 – Present_
  - Architected a production **RAG system** over a large enterprise contract portfolio using **LangGraph**, with conditional routing across four retrieval engines: hybrid vector search, text-to-SQL, graph traversal, and map-reduce comparison.
  - Built the **query-understanding layer**: intent classification, compound-query decomposition, entity/document disambiguation, and query rewriting.
  - Engineered a **dual-source data layer** (Firestore, extracted metadata, SQLite) with column-level precedence and provenance, raising field coverage to **53/56 contracts (95%)** and correcting program-manager attribution errors.
  - Mirrored the secondary source into a 63-column SQLite view, cutting data-access overhead to **0.076 ms vs ~1,325 ms** for live API reads while holding a **3.7 s median** response time.
  - Implemented **claim-level grounding and entailment checks** that return pass / needs-caveat / blocked for every contractual claim.
  - Instrumented span-level distributed tracing and **339 automated tests**; profiling showed LLM inference was **99.8%** of wall-clock time, which pointed optimisation at the model layer.
  - Automated chartered-accountant spreadsheet filling and end-to-end **PR-to-PO** processing with **Playwright** and JavaScript browser automation.
- **AI Engineer**, Iwayplus (IIT Delhi Incubation Centre) · Delhi · _Feb 2025 – Apr 2026_
  - Deployed and owned a production **RAG chatbot** for an Indian national institute on GCP: hybrid **FAISS + BM25** retrieval, cross-encoder reranking, multilingual, **sub-2 s** responses for concurrent users.
  - Cut per-request latency **60% (5 s → 2 s)** with FP16 mixed-precision inference and GPU request batching.
  - Built an **A\* pathfinding engine** for indoor navigation: multi-floor routing, floor-change detection, and indoor–outdoor handoff, live on campus.
- **Data Scientist Intern**, Technocolabs Software · Remote · _Aug 2024 – Jan 2025_
  - Built an ensemble model for startup-acquisition prediction (**89% accuracy**), served as a FastAPI microservice handling **1,500+ req/min** with autoscaling.

# 🚀 Projects

- [**NeuraDesk**](https://github.com/Subh24ai/neuradesk) — Agentic IT/HR ticket resolution. A 4-node multi-agent **LangGraph** system (Intake → Knowledge → Action → Escalation) with typed state and conditional routing; hybrid RAG (FAISS + BM25 + cross-encoder) and a **DSPy-compiled classifier that lifted accuracy 66.7% → 93.3%**, exposed through a Google **A2A** endpoint. Destructive actions (password resets, access provisioning) wait behind an explicit confirmation gate; unresolved tickets escalate to a human queue with full agent state and a SHA-256 audit log. **111 tests**, **RAGAS in CI** on every change, LangSmith tracing on every node; deployed on GCP Cloud Run at **100/100 success, P50 4.28 s** under concurrent load. _(LangGraph · DSPy · RAGAS · A2A · Cloud Run)_
- [**Yojana Sahayak**](https://github.com/Subh24ai/yojana-sahayak-assistant) — Fully offline, multilingual voice agent for Indian government schemes. Whisper MLX ASR (**24% WER, 2.7× real-time**) → query rewrite → FAISS + MiniLM RAG → **QLoRA fine-tuned Qwen2.5-1.5B** → AI4Bharat/gTTS, **~12 s end to end on CPU only** with zero internet at runtime. An **MCP server** exposes four tools (search, details, eligibility, list) over 591+ scheme facts to Claude Desktop or Cursor. Fine-tuned on **39,957** bilingual instruction pairs from 2,872 schemes (perplexity 1.15) in 54 minutes on a Kaggle T4; [model](https://huggingface.co/Subh24ai/yojana-sahayak-qwen2.5-1.5b-merged) and [dataset](https://huggingface.co/datasets/Subh24ai/yojana-sahayak-instruct) are open on Hugging Face. _(Whisper · QLoRA · MCP · FAISS)_
- [**CounselIQ**](https://github.com/Subh24ai/CounselIQ) — Legal-compliance platform for Indian enterprises. A LangGraph pipeline extracts clauses, scores risk, researches regulation, and drafts fixes; open critical risk flags block approval until a reviewer resolves them, and new regulations are matched against existing clauses automatically. _(LangGraph · FastAPI · Celery · pgvector · Next.js · AWS)_
- [**Agentic Voice Banking Agent**](https://github.com/Subh24ai/agentic-voice-banking-agent) — Hindi, English, and Hinglish banking assistant (balances, transfers, bill pay, card blocks) with per-turn language detection. Claude tool calls plan the action, but **the server executes it**: transfers and card blocks wait behind voice verification and an explicit “yes” held as server-side session state. Fixed a race condition where **20 concurrent transfers on a ₹1,000 account all succeeded; now exactly 1 does** and the balance never goes negative (atomic guarded UPDATE, `Decimal` money). Auto-escalates to a human after 3 frustrated turns; **102 tests**. _(FastAPI · Claude tool use · PostgreSQL · React)_

# 🛠 Skills

- **LLMs & Agents**: LangGraph, LangChain, LlamaIndex, multi-agent workflows, tool calling, MCP, A2A, Claude API, DSPy, prompt engineering
- **Retrieval & Vector Search**: embedding pipelines, FAISS, pgvector, BM25, hybrid retrieval, cross-encoder reranking, query rewriting, text-to-SQL, graph traversal
- **Models & Fine-tuning**: Hugging Face, PyTorch, QLoRA, vLLM, Whisper ASR, TTS
- **Evals & Observability**: RAGAS, LangSmith, span-level tracing, MLflow, W&B, CI/CD, latency optimisation
- **Backend & Cloud**: Python, SQL, JavaScript, FastAPI, PostgreSQL, Redis, Celery, Docker, GCP (Cloud Run, Firestore), AWS (SageMaker, Bedrock, S3, Textract)
- **Automation**: Playwright, browser automation (RPA), spreadsheet and formula automation
- **Currently learning**: Databricks (Spark SQL, PySpark, Delta Lake), Snowflake, Azure

# 🎖 Achievements

- **Top 12 nationally** (of 118 teams) — RAG Retrieval Competition, NCIIPC Startup India AI Grand Challenge
- **Top 3 finalist** (of 100+ teams) — Apollo Solvathon Medical AI Challenge, Apollo Hospitals × IIT Delhi
- **Claude Certified Architect – Professional** — Anthropic, Oct 2026
- **Generative AI Engineering with LLMs Specialization** — IBM via Coursera, Feb 2026

# 📖 Education

- _2020 – 2024_: **B.Tech in Computer Science and Engineering**, J.K. Institute of Applied Physics & Technology, University of Allahabad (CGPA 8.1 / 10)
