describe 'IO.sync.read', ->
  it 'reads files to Strings', ->
    { write, read } = IO.sync
    
    file = "#{TE.dir}/some_file"
    write file, 'Some text.'

    string = read file
    expect(string).toBe 'Some text.'
