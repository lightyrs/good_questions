class PublicationsController < ApplicationController

  respond_to :html, :json

  def index
    respond_with @publications = Publication.all
  end
end
