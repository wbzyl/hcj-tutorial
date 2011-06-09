require 'rubygems'
require 'bundler'

Bundler.require

require 'hcj'

require 'uv'
require 'rack/codehighlighter'

#use Rack::ShowExceptions

use Rack::Codehighlighter, :ultraviolet, :markdown => true, :element => "pre>code"

run WB::HCJ.new
