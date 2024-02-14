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

  #----------------------------------

  def insert_photo

     new_photo = Photo.new

     new_photo.image = params.fetch("input_image")
     new_photo.caption = params.fetch("input_caption")
     new_photo.owner_id = params.fetch("input_owner_id")

     if new_photo.valid?
        new_photo.save
        @individual_photo = new_photo 
     end

     render({ :template => "photos/individual_photos" })


  end # Of method.

  #----------------------------------
  
  def update_photo

    photo_id = params.fetch("photo_id")

    photo_to_update = Photo.where({ :id => photo_id }).first

    photo_to_update.caption = params.fetch("input_caption")

    photo_to_update.image = params.fetch("input_image")

    if photo_to_update.valid?
      photo_to_update.save
      @individual_photo = photo_to_update
   end

    render({ :template => "photos/individual_photos" })   

  end # Of method.

  #----------------------------------

  def delete_photo

    photo_id = params.fetch("photo_id")
    @the_photo = Photo.where({ :id => photo_id }).first

    @the_photo.destroy

    redirect_to("/photos", { :notice => "Photo deleted successfully."} )

  end # Of method.

  #----------------------------------

  def insert_comment

    new_comment = Comment.new  

    new_comment.photo_id = params.fetch("input_photo_id")
    new_comment.author_id = params.fetch("input_author_id")
    new_comment.body = params.fetch("input_comment")

    if new_comment.valid?
      new_comment.save
      @individual_photo = Photo.where({ :id => new_comment.photo_id }).first
   end

   render({ :template => "photos/individual_photos" })

end # Of method.

#----------------------------------







end # Of class.
