ActiveAdmin.register Job do

  index do
    column :id
    column :position
    column :description
    column :status
    column :industry
    column :company
    default_actions
  end


    form do |f|
      f.inputs "Details" do
        f.input :position
        f.input :description
        f.input :company
        f.input :status
        f.input :industry

      end
      f.actions
    end
end

