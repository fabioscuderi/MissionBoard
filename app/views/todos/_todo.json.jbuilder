json.extract! todo, :id, :title, :description, :status, :due_date, :image, :created_at, :updated_at
json.url todo_url(todo, format: :json)