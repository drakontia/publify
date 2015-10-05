# This file is used by Rack-based servers to start the application.

<<<<<<< HEAD
require ::File.expand_path('../config/environment',  __FILE__)
use Rack::Static, :urls => ['/carrierwave'], :root => 'tmp'
=======
require ::File.expand_path('../config/environment', __FILE__)
>>>>>>> 50909944e588210042c3523701cf9bb09dea7a4f
run Rails.application
