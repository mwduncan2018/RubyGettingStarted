Comment = Struct.new(:text, :created_at, :review_id, :user_id)

c = Comment.new("This is a comment.")
c.user_id = 1
p c.text
p c

d = Comment.new("Comment d", nil, 1234, 4321)
p d.review_id
p d.user_id
p d