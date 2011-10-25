require 'bundler/setup'

require 'hcj'

require 'coderay'
require 'rack/codehighlighter'

#use Rack::ShowExceptions

use Rack::Codehighlighter, :coderay, :markdown => true, :element => "pre>code"

run WB::HCJ
