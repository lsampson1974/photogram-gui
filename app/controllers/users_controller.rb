class UsersController < ApplicationController
  
    def list_all_users

        @users = User.all.order({ :username => :asc }) 

        render({ :template => "users/users_list" })

    end # Of method.

#----------------------------------

    def show_individual_user

      @user_param = params.fetch("username")

      @individual_user = User.where({ :username => @user_param }).first
      

      render({ :template => "users/show_individual" })
    
    end # Of method.

end # Of class.
