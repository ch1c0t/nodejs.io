{
  readFile
  writeFile
  copyFile
  rename
  mkdir
  stat
  chmod
} = require('fs').promises

{
  readFileSync
  writeFileSync
  copyFileSync
  renameSync
  mkdirSync
  existsSync
  chmodSync
  readdirSync
} = require 'fs'

global.IO =
  sync:
    read: (path) ->
      readFileSync path, 'utf-8'
    write: writeFileSync
    copy: copyFileSync
    move: renameSync
    mkdir: (path) ->
      mkdirSync path, recursive: yes
    exists: existsSync
    dirs: (dir) ->
      readdirSync dir, withFileTypes: yes
        .filter (dirent) -> dirent.isDirectory()
        .map (dirent) -> "#{dir}/#{dirent.name}"
  async:
    read: (path) ->
      readFile path, 'utf-8'
    write: writeFile
    copy: copyFile
    move: rename
    mkdir: (path) ->
      mkdir path, recursive: yes
    stat: stat
    chmod: chmod
