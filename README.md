# 🎬 AI Movie Studio Reimaginer

Reimagine any movie shot-by-shot using GPT-4o + image reference inputs and actor replacements. Built with React and Vite, this app lets you construct, customize, and export high-fidelity prompts for use in AI image and video generators.

## 🚀 Features

- 🔄 **Cast Replacer**: Swap characters globally or per scene (e.g. Dwayne Johnson as Forrest Gump)
- 🎞 **Scene & Shot Builder**: Drag & drop timeline editor with shot presets
- 🎨 **Style Control Panel**: Adjust aspect ratio, film grain, 90s tone, lighting presets
- 🖼 **Image Reference Upload**: Use real stills to auto-fill prompt details (vision model support)
- 🧠 **Live Prompt Generator**: Get structured, batch-exportable prompts for each shot
- 📁 **Asset Log**: Save and comment per-scene output
- 📤 **Export Tools**: Copy to clipboard, export to Notion, markdown, or batch GPT

## 🛠️ Tech Stack

- **Frontend**: React + Vite + TailwindCSS
- **State Management**: Zustand
- **Export**: Markdown, CSV, Notion API (planned)
- **AI Model**: GPT-4o Vision-ready (tested with sk-proj)

## 🔧 Getting Started

```bash
# Clone repo
git clone https://github.com/Rvanschie/ai-movie-studio-reimaginer.git
cd ai-movie-studio-reimaginer

# Install dependencies
npm install

# Run app
npm run dev
```

Then open: [http://localhost:5173](http://localhost:5173)

## 🔑 Environment Setup

Rename `.env.example` to `.env` and add your OpenAI key:

```
OPENAI_API_KEY=sk-...
```

## 🧩 Components

- `App.jsx`: Main layout and router
- `CastEditor.jsx`: Replace actors, save presets
- `SceneLibrary.jsx`: Add, edit, and manage scenes
- `ShotTimeline.jsx`: Visual timeline builder
- `StylePanel.jsx`: Control visual tone
- `PromptPreview.jsx`: Real-time prompt generation
- `AssetLog.jsx`: Image reference + comments

## 📦 Scripts

```bash
npm run dev       # Start development server
npm run build     # Build for production
```

## 📚 Future Plans

- Auto-vision parsing of uploaded images (GPT-4o)
- Cloud asset storage (Firebase/Supabase)
- Multi-user project collaboration
- Real-time preview with AI image integration

---

© 2025 — Built with ❤️ by Ramin (Monsieur Pixel)
