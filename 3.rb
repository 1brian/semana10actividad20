# config.ru
require 'rack'
class MiPrimeraWebApp
  def call(env)
    @url = env['REQUEST_PATH'] == '/index'
    @url_otro = env['REQUEST_PATH'] == '/otro'

    if @url == '/index'
      [200, { 'Content-Type' => 'text/html' }, ['Estas en index']]
    else
      [202, { 'Content-Type' => 'text/html' }, ['<h1> Estas en el landing </h1>']]
    end
    if @url_otro == '/otro'
    [404, { 'Content-Type' => 'text/html' }, [File.read("404.html")]]
  end
  end
end
run MiPrimeraWebApp.new
