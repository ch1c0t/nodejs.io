{ readFile, writeFile, copyFile, rename, mkdir, chmod } = require('fs').promises
{ existsSync } = require 'fs'

global.IO =
  read: (path) -> readFile path, 'utf-8'
  write: writeFile
  copy: copyFile
  move: rename
  mkdir: mkdir
  chmod: chmod
  exist: existsSync
  ensure: (path) ->
    unless existsSync path
      mkdir path, recursive: yes
