class UsersController < ApplicationController
  
    def list_all_users

      @users = User.all.order({ :username => :asc }) 

      render({ :template => "layouts/users_list" })

    end # Of method.

end # Of class.
