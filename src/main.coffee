{ readFile, writeFile, copyFile, rename, mkdir, chmod } = require('fs').promises
{ existsSync, readdirSync } = require 'fs'

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
  dirs: (dir) ->
    readdirSync dir, withFileTypes: yes
      .filter (dirent) -> dirent.isDirectory()
      .map (dirent) -> "#{dir}/#{dirent.name}"
      
