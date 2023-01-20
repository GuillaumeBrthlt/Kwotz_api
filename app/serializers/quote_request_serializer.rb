class QuoteRequestSerializer
  include JSONAPI::Serializer
  attributes :id, :email, :response_status, :read, :received_at, :response_comment, :user, :user_profile, :cold_rooms, :project, :document_url, :created_at, :spare_parts
end
