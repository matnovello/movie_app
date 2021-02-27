require "http"

request = HTTP.get("http://localhost:3000/api/movies/66")

puts request
