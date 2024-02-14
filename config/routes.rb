Rails.application.routes.draw do

    get("/", { :controller => "users", :action => "list_all_users" })

    get("/users", { :controller => "users", :action => "list_all_users" })

    post("/add_user", { :controller => "users", :action => "insert_user" })

    get("/users/:username", { :controller => "users", :action => "show_individual_user" })

    post("/update_user/:user_id", { :controller => "users", :action => "update_user" })

    get("/photos", { :controller => "photos", :action => "list_all_photos" })
    
    get("/photos/:photo_id", { :controller => "photos", :action => "show_individual_photo" }) 
    
    post("/update_photo/:photo_id", { :controller => "photos", :action => "update_photo" })

    get("/delete_photo/:photo_id", { :controller => "photos", :action => "delete_photo" })

    post("/insert_photo_record", { :controller => "photos", :action => "insert_photo" })

    post("/add_comment", { :controller => "photos", :action => "insert_comment" })

end
