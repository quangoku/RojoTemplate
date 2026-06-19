# Template Rojo Project (forked from leif)

## Getting Started ( Install Rokit First )

1. Install tools

```bash
rokit add rojo wally wally-package-types
rokit install
```

2. Install npm packages for genRojoTree (chokidar)

```bash
npm install
```

3. Run genRojoTree.js

```bash
node tools/genRojoTree.js
```

4. Generate sourcemap.json for Luau LSP

```bash
rojo sourcemap default.project.json --output sourcemap.json
```

5. Run wally-package-types

```bash
wally-package-types --sourcemap sourcemap.json ./Packages  
```
6. Run genRojoTree

```bash
npm run watch:rojo
```

7. Run Rojo

```bash
rojo serve
```

For more help, check out [the Rojo documentation](https://rojo.space/docs).
