use Rack::Static, 
  :urls => ["/stylesheets", "/img"],
  :root => "./"

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=60'
    },
    File.open('index.html', File::RDONLY)
  ]
}
