class Comment
  include DataMapper::Resource
  include DataMapper::Validate
  
  many_to_one :posts
  
  property :id, Fixnum, :serial => true
  property :username, String, :length => 255
  property :email, String, :format => :email_address
  property :body, DataMapper::Types::Text, :nullable => false
  property :body_html, DataMapper::Types::Text, :nullable => false, :lazy => false
  property :post_id, Fixnum
end