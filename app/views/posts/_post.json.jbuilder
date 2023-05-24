json.extract! post, :id, :title, :author_user, :description, :image, :likes, :created_at, :updated_at
json.url post_url(post, format: :json)
