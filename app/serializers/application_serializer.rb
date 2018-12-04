class ApplicationSerializer < ActiveModel::Serializer

  def logged_user
    current_user[:email]
  end


  def content_type
  	object.class.name
  end
end