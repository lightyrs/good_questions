class SubjectsController < ApplicationController

  respond_to :html, :json

  def index
    respond_with @subjects = tags
  end

  private

  def tags
    ActsAsTaggableOn::Tagging.
      includes(:tag).
      where(context: 'subjects').
      group('taggings.id, tags.id, tags.name').
      select('tags.name, count(*) as count')
  end
end
