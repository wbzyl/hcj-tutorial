require 'rubygems'
require 'bundler'

Bundler.require

require 'nosql'

require 'uv'
require 'rack/codehighlighter'

use Rack::ShowExceptions
use Rack::Lint

use Rack::Codehighlighter, :ultraviolet, :markdown => true, :element => "pre>code"

run WB::HCJ.new
