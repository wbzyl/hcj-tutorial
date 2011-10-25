# -*- coding: utf-8 -*-

require 'rdiscount'
require 'erubis'

require 'sinatra/base'

require 'sinatra/static_assets'
require 'sinatra/filler'

module WB
  class HCJ < Sinatra::Base
    register Sinatra::StaticAssets

    # disable overriding public and views dirs

    # deprecated
    # set :app_file, __FILE__
    # set :static, true

    settings.app_file = __FILE__
    settings.static = true

    # the middleware stack can be used internally as well. I'm using it for
    # sessions, logging, and methodoverride. This lets us move stuff out of
    # Sinatra if it's better handled by a middleware component.
    # set :logging, true  # use Rack::CommonLogger
    settings.logging = true  # use Rack::CommonLogger

    set :erb, :pattern => '\{% %\}', :trim => true
    set :markdown, :layout => false

    # helper methods
    helpers Sinatra::Filler

    get '/' do
      erb(markdown(:main))
    end

    get '/:section' do
      erb(markdown(:"#{params[:section]}"))
    end

    # kod programu:
    # get 'html5/idzie-nowe/blog.html'      -> x/html/idzie-nowe/blog.html
    # get 'css3/tabele/after-content.css'   -> x/css3/tabele/after-content.css
    # get 'jquery/canvas/halma.js'          -> x/js/canvas/halma.js
    # get 'jquery/canvas/halma.js'          -> x/jquery/canvas/halma.js
    #
    #   etc.
    #
    #   reszta: plain_text
    #
    get %r{^([-_\w\/]+)\/([-_\w]+)\.((\w{1,4})(\.\w{1,4})?)$} do

      translate = { # to ultraviolet syntax names: uv -l syntax
        'html' => 'html',
        'html.erb' => 'rhtml',
        'text.erb' => 'rhtml',
        'ru' => 'ruby',
        'js' => 'javascript',
        'yml' => 'yaml',
        'sh' => 'bash'
      }

      content_type 'text/html', :charset => 'utf-8'

      dirname = params[:captures][0]
      name = params[:captures][1]
      extname = params[:captures][2]
      filename = name + "." + extname

      @title =  'WB@HCJ' + dirname.split('/').join(' » ')

      @filename = File.expand_path(File.join(File.dirname(__FILE__), 'x', dirname, filename))

      lang = translate[extname] || 'plain_text'

      if File.exists?(@filename) && File.readable?(@filename)
        content = "<h1>#{filename}</h1>"
        content += "<pre><code>:::#{lang}\n#{escape_html(File.read @filename)}</code></pre>"
      else
        content = "<h2>oops! couldn't find <em>#{filename}</em></h2>"
      end

      erb content, :layout => :code
    end

    error do
      e = request.env['sinatra.error']
      Kernel.puts e.backtrace.join("\n")
      'Application Error'
    end

  end
end
