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


#----------------------------------



    def update_user

        user_id = params["user_id"]
        updated_username = params["input_username"]

        @the_user = User.find(user_id)

        @the_user.username = updated_username

        if @the_user.valid?
            @the_user.save
            redirect_to("/users/#{@the_user.username}", { :notice => "User updated successfully."} )
        end


    end # Of method.

#----------------------------------

def insert_user

    new_user = User.new

    new_user.username = params.fetch("input_username")

    if new_user.valid?
       new_user.save
       @individual_user = new_user
       
    end


    @user_param = new_user.username


    redirect_to("/users/#{@user_param}", { :notice => "User updated successfully."} )


 end # Of method.


#----------------------------------





end # Of class.
