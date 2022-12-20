class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
    @posts = Post.find(params[:post_id])
  end

  def create
    @comment = Comment.new(comment_params)
    @post = Post.find(params[:post_id])
    @comment.post = @post
    @comment.user = current_user
    if @comment.save!
      redirect_to post_path(@comment.post), notice: " Votre commentaire a bien été créé"
    else
      render :new
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)
    redirect_to post_path(@comment.post)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to post_path(@comment.post)
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end

# def create
#   raise
#   @booking = Booking.new(booking_params)
#   @booking.offer = @offers
#   @booking.user = current_user
#     if @booking.save!
#       redirect_to booking_path(@booking)
#     else
#       render :new
#     end
# end
