# rubocop:disable Style/LineLength, Layout/EmptyLinesAroundBlockBody
ActiveAdmin.register UserPersonal do

  index do
    id_column
    column :user
    column :first_name
    column :last_name
    column :sex
    column :age
    actions
  end

  filter :first_name
  filter :last_name
  filter :sex
  filter :age

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :user_id, :first_name, :last_name, :reading_first_name, :reading_last_name, :sex, :age, :birthday, :address
  #
  # or
  #
  # permit_params do
  #   permitted = [:user_id, :first_name, :last_name, :reading_first_name, :reading_last_name, :sex, :age, :birthday, :address]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
# rubocop:enable Style/LineLength, Layout/EmptyLinesAroundBlockBody
