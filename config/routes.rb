Rails.application.routes.draw do

    get("/", { :controller => "users", :action => "list_all_users" })

    get("/users", { :controller => "users", :action => "list_all_users" })

    get("/users/:username", { :controller => "users", :action => "show_individual_user" })

    get("/photos", { :controller => "photos", :action => "list_all_photos" })
    

    get("/photos/:photo_id", { :controller => "photos", :action => "show_individual_photo" })    



end
