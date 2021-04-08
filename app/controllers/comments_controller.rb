class CommentsController < ApplicationController
  def create
    museum = Museum.find(params[:museum_id])
    comment = museum.comments.build(params_comment)
    comment.user_id = current_user.id
    comment.save
    redirect_back(fallback_location: root_path)
  end

  def edit
  end

  def destroy
  end

  private

  def params_comment
    params.require(:comment).permit(:title, :body, :how_to_visit, :companion, post_images_images: [])
  end

end
