class TagsController < ApplicationController
  include TagsHelper

  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end

  def new
    @tag = Tag.new
  end

  def create
    @tag = Tag.new(tags_params)
    @tag.save

    redirect_to tags_path
  end

  def destroy
    @tag = Tag.destroy(params[:id])
    @tag.save

    redirect_to tags_path
  end

  def edit
    @tag = Tag.find(params[:id])
  end

  def update
    @tag = Tag.find(params[:id])
    @tag.update(tags_params)

    redirect_to tags_path
  end
end
