// Simple script that scans README files and prints all Markdown links.
// Usage:
//   node examples/javascript/readme_link_summary.js

const fs = require('fs');
const path = require('path');

function findReadmes(root) {
  const result = [];
  const entries = fs.readdirSync(root, { withFileTypes: true });
  for (const e of entries) {
    const full = path.join(root, e.name);
    if (e.isDirectory()) {
      if (e.name === '.git' || e.name === 'node_modules') continue;
      result.push(...findReadmes(full));
    } else if (e.isFile() && e.name.toLowerCase().startsWith('readme') && e.name.toLowerCase().endsWith('.md')) {
      result.push(full);
    }
  }
  return result;
}

function extractLinks(markdown) {
  const regex = /\[([^\]]+)\]\(([^)]+)\)/g;
  const links = [];
  let match;
  while ((match = regex.exec(markdown)) !== null) {
    links.push({ text: match[1], href: match[2] });
  }
  return links;
}

function main() {
  const root = process.cwd();
  const readmes = findReadmes(root);
  console.log('README dosyalarındaki linkler:\n');
  for (const file of readmes) {
    const content = fs.readFileSync(file, 'utf8');
    const links = extractLinks(content);
    console.log('--- ' + path.relative(root, file));
    if (links.length === 0) {
      console.log('  (Hiç link yok)');
    } else {
      for (const l of links) {
        console.log(`  [${l.text}] -> ${l.href}`);
      }
    }
    console.log('');
  }
}

if (require.main === module) {
  main();
}
