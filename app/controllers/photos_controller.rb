class PhotosController < ApplicationController
  
  def list_all_photos

      @users = User.all.order({ :username => :asc }) 

      render({ :template => "users/users_list" })

  end # Of method.

#----------------------------------

  def show_individual_photo

    @photo_param = params.fetch("photo_id")

    @individual_photo = Photo.where({ :id => @photo_param }).first

    render({ :template => "photos/individual_photos" })
  
  end # Of method.

#----------------------------------

  def list_all_photos

    @photos = Photo.all.order({ :created_id => :asc }) 

    render({ :template => "photos/photos_list" })
  
  end # Of method.


end # Of class.
