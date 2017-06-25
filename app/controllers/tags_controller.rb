class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def new
    @tag = Tag.new
    @new = true
  end

  def create
    tag = Tag.new(tag_params)
    tag.save
    redirect_to tags_path
  end

  def edit
    @tag = Tag.find(params[:id])
  end

  def update
    tag = Tag.find(params[:id])
    tag.update_attributes(tag_params)
    redirect_to tags_path
  end

  def destroy
    Tag.find(params[:id]).destroy
    redirect_to tags_path
  end

  private

  def tag_params
    params.require(:tag).permit(:name)
  end
end
