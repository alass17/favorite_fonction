class FavoritesController < ApplicationController
  before_action :set_blog, only: [:create, :destroy]

  def create
    current_user.favorites.create(blog_id: params[:blog_id])
    respond_to do |format|
      format.js { render :favorite }
    end
  end

  def destroy
    current_user.favorites.find_by(id: params[:id]).destroy
    respond_to do |format|
      format.js { render :favorite }
    end
  end

  private

  def set_blog
    @blog = Blog.find(params[:blog_id])
  end

end