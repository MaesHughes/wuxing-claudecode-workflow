#!/usr/bin/env node

import { cpSync, mkdirSync, existsSync } from 'fs'
import { join, dirname } from 'path'
import { fileURLToPath } from 'url'

const __dirname = dirname(fileURLToPath(import.meta.url))
const CLAUDE_DIR = join(process.env.HOME || process.env.USERPROFILE, '.claude')

console.log('\x1b[36m%s\x1b[0m', 'Wuxing Workflow Installer')
console.log('\x1b[36m%s\x1b[0m', '========================')

// Create directories
const commandsDir = join(CLAUDE_DIR, 'commands')
const agentsDir = join(CLAUDE_DIR, 'agents')

if (!existsSync(CLAUDE_DIR)) mkdirSync(CLAUDE_DIR, { recursive: true })
if (!existsSync(commandsDir)) mkdirSync(commandsDir, { recursive: true })
if (!existsSync(agentsDir)) mkdirSync(agentsDir, { recursive: true })

// Copy files
console.log('\x1b[33m%s\x1b[0m', 'Copying commands...')
cpSync(join(__dirname, 'commands'), commandsDir, { recursive: true, filter: (src) => !src.includes('-v1.md') })

console.log('\x1b[33m%s\x1b[0m', 'Copying agents...')
cpSync(join(__dirname, 'agents'), agentsDir, { recursive: true })

console.log('')
console.log('\x1b[32m%s\x1b[0m', 'Installation complete!')
console.log('')
console.log('Usage:')
console.log('  /wuxing-deep <task>  # Deep workflow (complex tasks)')
console.log('  /wuxing-fast <task>  # Fast workflow (simple tasks)')
console.log('')
