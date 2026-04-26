{
  readFile
  writeFile
  copyFile
  rename
  mkdir
  stat
  chmod
} = require('fs').promises

exports.async =
  read: (path) ->
    readFile path, 'utf-8'
  write: writeFile
  copy: copyFile
  move: rename
  mkdir: (path) ->
    mkdir path, recursive: yes
  stat: stat
  chmod: chmod
