class PeopleController < ApplicationController

  respond_to :html, :json

  def index
    respond_with @people = Person.all
  end
end
