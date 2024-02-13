Rails.application.routes.draw do

    get("/", { :controller => "users", :action => "list_all_users" })
    get("/users", { :controller => "users", :action => "list_all_users" })

end
