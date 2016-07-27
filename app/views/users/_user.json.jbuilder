json.extract! user, :id, :name, :last_name, :birth_date, :email, :fone, :cell_phone, :street, :neighborhood, :city, :state, :zip_code, :created_at, :updated_at
json.url user_url(user, format: :json)