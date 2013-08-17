class InterviewsController < ApplicationController

  respond_to :html, :json

  def index
    respond_with @interviews = Interview.all
  end
end
