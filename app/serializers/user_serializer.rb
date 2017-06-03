class UserSerializer < ActiveModel::Serializer
  attributes :id, :salutation, :academic_title, :first_name, :last_name, :email, :position_name, :show_onboarding_screen, :state

  def say_hello
    "Hello #{object.email}!"
  end
end
