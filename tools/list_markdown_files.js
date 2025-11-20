// Simple Node.js script to list all Markdown files in the repo.
// Usage:
//   node tools/list_markdown_files.js

const fs = require('fs');
const path = require('path');

function walk(dir, acc = []) {
  const entries = fs.readdirSync(dir, { withFileTypes: true });
  for (const e of entries) {
    const full = path.join(dir, e.name);
    if (e.isDirectory()) {
      if (e.name === '.git' || e.name === 'node_modules') continue;
      walk(full, acc);
    } else if (e.isFile() && e.name.toLowerCase().endsWith('.md')) {
      const stats = fs.statSync(full);
      acc.push({ file: full, size: stats.size });
    }
  }
  return acc;
}

function main() {
  const root = process.cwd();
  const files = walk(root, []);
  console.log('Markdown dosyaları:\n');
  for (const f of files) {
    console.log(`- ${path.relative(root, f.file)} (${f.size} bytes)`);
  }
}

if (require.main === module) {
  main();
}
