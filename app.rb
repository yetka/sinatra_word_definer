require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')
require('./lib/definition')
require('pry')

get('/') do
  @list = Word.sort()
  erb(:list)
end

post('/output') do
  name = params["name"]
  word = Word.new({:name=> name})
  word.save()
  @list = Word.sort()
  erb(:list)
end

get('/word/:id') do
  @word = Word.find(params[:id])
  erb(:definition)
end

post('/word/:id') do
  @list = Word.sort()
  @word = Word.find(params[:id])
  word_definition = params["word_definition"]
  definition = Definition.new({:word_definition=> word_definition})
  @word.add_definition(definition)
  erb(:list)
end

get ('/list') do
  @list = Word.sort()
  erb(:list)
end
