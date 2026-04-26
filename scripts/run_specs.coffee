{ CreateTestEnvironment } = require './run_specs/CreateTestEnvironment.coffee'

run = ->
  global.TE = await CreateTestEnvironment()
  console.log "Created a test environment directory at"
  console.log TE.dir

  TE.jasmine.execute()
    .then (info) ->
      if info.overallStatus is 'failed'
        process.exit 3
    .catch (error) ->
      console.error error
      process.exit 3

run()
