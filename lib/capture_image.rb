require 'phantomjs'
class CaptureImage
  # Your code goes here...

  def initilize(app)
    @app = app
  end
  
  def call(env)
    req = Rack::Request.new(env)
    if req.params["url"].present?
      system('phantomjs /lib/phantomjs_rasterize/rasterize.js' + " " + req.params["url"] + " " + 'image.png')
      req.params["url"]= nil
    end
    @app.call(env)
  end 

  def self.test
    system('phantomjs /lib/phantomjs_rasterize/rasterize.js http://www.google.com image.png')
  end

end
