# ReScript Git & IMAP

This is an implementation the rescript bindings for the npm packages [dotenv](https://www.npmjs.com/package/dotenv), [imap](https://www.npmjs.com/package/imap), and [simple-git](https://www.npmjs.com/package/simple-git). The use case is backing up notes from an imap account into a git repository. The repo was created from a template based on the official ReScript [starter template](https://github.com/rescript-lang/rescript-project-template).

## Dependencies
```sh
npm install dotenv simple-git imap
```

## Installation

```sh
npm install
```

## Build

- Build: `npm run build`
- Build & watch: `npm run build:watch`
- Clean: `npm run clean`

## Run

```sh
node src/Main.mjs
```
