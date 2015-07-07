Rails.application.routes.draw do

  get "/greet", :controller => 'greet', :action => 'index'

  get "/contact", :controller => 'contact', :action => 'index'
  get "/contact_submitted" => 'contact#display'

  get "/weather", :controller => 'weather', :action => 'index'
  get "/weather_city" => 'weather#city'

end