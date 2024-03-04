Rails.application.routes.draw do
  get("/", { :controller => "places", :action => "index" })

  resources "entries"
  resources "places"
  resources "sessions"
  resources "users"

  get "/login", :controller => "users", :action => "new"
  get "/logout", :controller => "sessions", :action => "destroy"

end
