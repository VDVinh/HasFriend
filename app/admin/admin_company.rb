ActiveAdmin.register Company do

  index do
    column :id
    column :name
    column :description
    column :email
    column :phone

    default_actions
  end


    form do |f|
      f.inputs "Details" do
        f.input :name
        f.input :email
        f.input :phone
        f.input :password
        f.input :password_confirmation
        f.input :description
      end
      f.actions
    end
end

