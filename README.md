# CaptureImage https://badge.fury.io/rb/capture_image.png

It's create the image of given url, uses Phantomjs at backend to create image
http://phantomjs.org/

## Installation

Add this line to your application's Gemfile:

    gem 'capture_image'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capture_image

## Usage

Just create the form_tag and pass the url as text_field i.e.

    <%=form_tag ( { controller: "home", action: "capture_image" } ) do%>
      <%= text_field_tag "url", nil %>
      <%= submit_tag :create%>
    <%end%>
    

Pass the url to Rack via action to create the image

    req = Rack::Request.new(params[:url])
    req.params[:url] = url

 
 it uses the middleware at backend to capture image so if you want to handle the request according to your functionality
 then you can edit the middleware. 
 

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


