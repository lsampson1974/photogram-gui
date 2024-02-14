Rails.application.routes.draw do

    get("/", { :controller => "users", :action => "list_all_users" })

    get("/users", { :controller => "users", :action => "list_all_users" })

    get("/users/:username", { :controller => "users", :action => "show_individual_user" })

    post("/update_user/:user_id", { :controller => "users", :action => "update_user" })

    get("/photos", { :controller => "photos", :action => "list_all_photos" })
    
    get("/photos/:photo_id", { :controller => "photos", :action => "show_individual_photo" })    

    post("/insert_photo_record", { :controller => "photos", :action => "insert_photo" }))

end
