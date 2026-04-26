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

exports.sync =
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
