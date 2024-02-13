class UsersController < ApplicationController
  
    def list_all_users

      render({ :template => "layouts/users_list" })

    end # Of method.

end # Of class.
