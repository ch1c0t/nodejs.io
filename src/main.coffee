{ readFile, writeFile, copyFile, rename, mkdir } = require('fs').promises
{ existsSync } = require 'fs'

global.IO =
  read: (path) -> readFile path, 'utf-8'
  write: writeFile
  copy: copyFile
  move: rename
  mkdir: mkdir
  exist: existsSync
