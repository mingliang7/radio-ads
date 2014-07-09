json.array!(@thumbnails) do |thumbnail|
  json.extract! thumbnail, :id, :thumb_post, :thumb_title, :thumb_image
  json.url thumbnail_url(thumbnail, format: :json)
end
