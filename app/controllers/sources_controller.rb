class SourcesController < ApplicationController

  respond_to :html, :json

  def index
    respond_with @sources = Source.all
  end

  def new
    respond_with @source = Source.new
  end

  private

  def source_params
    params.require(:source).permit(:name, :url, :description)
  end
end
