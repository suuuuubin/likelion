class CommentController < ApplicationController
   before_action :authenticate_user!, only: [:edit, :destroy, :create]
   
   def create
    comment = Comment.new
    
    comment.post_id=params[:id]
    comment.user_id=current_user.id
    comment.comment=params[:comment]
    
    comment.save
    
    redirect_to "/posts/#{params[:id]}"

   end
   
   def destroy
   c=Comment.find(params[:id])
   authorize! :destroy, c
   c.destroy
   c.save

   redirect_to "/posts/#{params[:id]}"
   end
    
end
