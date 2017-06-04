class UserSerializer < ActiveModel::Serializer
  attributes :id,
    :salutation,
    :academic_title,
    :first_name,
    :last_name,
    :company_name,
    :email,
    :position_name,
    :show_onboarding_screen,
    :state
end
