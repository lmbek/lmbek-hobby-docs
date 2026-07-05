# LMBEK Hobby Docs

Architecture documentation for the LMBEK Hobby Workspace, powered by [LikeC4](https://likec4.dev/).

## Getting Started

Install dependencies:

```bash
npm install
```

Start the dev server with live preview:

```bash
npm run dev
```

Build a static website:

```bash
npm run build
```

Export diagrams as PNG:

```bash
npm run export
```

## Docker

Build and run the docs site as a container:

```bash
docker build -t lmbek-hobby-docs .
docker run -p 8080:80 lmbek-hobby-docs
```

The site will be available at `http://localhost:8080`.

## Structure

| File       | Purpose                                      |
|------------|----------------------------------------------|
| `spec.c4`  | Element kinds and default styles             |
| `model.c4` | Systems, containers, and their relationships |
| `views.c4` | Diagram views (landscape, per-system, etc.)  |
