require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/weekday_finder')


get('/') do

  erb(:weekday_finder)
end


get('/weekday_result') do

  @your_date = params.fetch('your_date')
  @weekday = @your_date.weekday_finder()
  @tense = @your_date.time_tense()

  erb(:weekday_result)
end
