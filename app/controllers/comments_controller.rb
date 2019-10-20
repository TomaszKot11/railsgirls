class CommentsController < ApplicationController
  def create
    my_params = params.permit!
    comment = Comment.create!(content: my_params['comment']['content'], post_id: my_params['comment']['post_id'])
    @post = comment.post
    redirect_to @post
  end
end
