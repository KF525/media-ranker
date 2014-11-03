module ApplicationHelper

  def upvote(object)
    object.rank += 1
  end

end
