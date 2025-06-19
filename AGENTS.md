# AGENTS.md – AI Movie Studio App (Codex Architecture)

## 🧠 Agent 1: PromptComposer
- **Rol**: Vult prompts automatisch in op basis van gebruikerskeuze en beeldanalyse
- **Input**: Cast swaps, stijlkeuzes, referentiebeeld
- **Output**: Volledig geformatteerde GPT-4o prompttekst
- **Modules**: PromptForm, StylePanel, CastEditor

## 🎥 Agent 2: VisionAnalyzer
- **Rol**: Analyseert geüploade beelden via GPT-4o Vision API
- **Input**: PNG/JPG afbeelding
- **Output**: Metadata zoals camerapositie, lighting, props, tijdsperiode
- **Modules**: Gpt4oVisionParser.js

## 👤 Agent 3: CastManager
- **Rol**: Beheert globale en per-shot castvervanging (bv. Forrest → Dwayne)
- **Input**: Actor mapping
- **Output**: Geupdate promptregels met juiste personages
- **Modules**: CastEditor.js

## 🎬 Agent 4: SceneBuilder
- **Rol**: Bouwt shotvolgorde op en beheert shotinstellingen (lens, props, etc.)
- **Input**: Timeline en scenes
- **Output**: Volgorde van prompts met shotspecificaties
- **Modules**: Timeline, ProjectManager

## 🎛 Agent 5: StyleController
- **Rol**: Past kleur, aspect ratio en filmstijl toe op prompts
- **Input**: Preset of handmatige stijlkeuzes
- **Output**: Visuele modifiers in prompts
- **Modules**: StylePanel.js

## 📝 Agent 6: PromptExporter
- **Rol**: Bundelt alle prompts en metadata
- **Input**: Scenes/shots
- **Output**: Markdown, Notion API batch, exportbestand
- **Modules**: PromptExporter.js

## 🌐 Agent 7: ProjectState
- **Rol**: Beheert de toestand van een project, slaat scenes op
- **Input**: Bewerking, opslag
- **Output**: Geordende projectdata
- **Modules**: ProjectManager.js

---

> Dit document vormt een basis voor schaalbare AI-coördinatie in toekomstige multi-agent workflows (zoals LangGraph of OpenAI Assistants API).
