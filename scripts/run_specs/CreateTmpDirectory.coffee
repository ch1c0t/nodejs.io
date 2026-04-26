{ randomUUID } = require 'crypto'

require process.cwd()
{ mkdir } = IO.sync

exports.CreateTmpDirectory = ->
  name = "task.test.#{process.pid}.#{randomUUID()}"
  path = "/tmp/#{name}"
  mkdir path
  path
