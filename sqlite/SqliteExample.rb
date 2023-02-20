require 'sqlite3'

class User
  attr_accessor :id, :name, :email

  def initialize(id, name, email)
    @id = id
    @name = name
    @email = email
  end

  def save
    db = SQLite3::Database.new('database.db')
    if @id.nil?
      db.execute("INSERT INTO users (name, email) VALUES (?, ?)", [@name, @email])
      @id = db.last_insert_row_id
    else
      db.execute("UPDATE users SET name=?, email=? WHERE id=?", [@name, @email, @id])
    end
  end

  def delete
    db = SQLite3::Database.new('database.db')
    db.execute("DELETE FROM users WHERE id=?", [@id])
  end

  def self.all
    db = SQLite3::Database.new('database.db')
    rows = db.execute("SELECT * FROM users")
    rows.map { |row| User.new(row[0], row[1], row[2]) }
  end

  def self.find(id)
    db = SQLite3::Database.new('database.db')
    row = db.get_first_row("SELECT * FROM users WHERE id=?", [id])
    User.new(row[0], row[1], row[2])
  end

  def posts
    db = SQLite3::Database.new('database.db')
    rows = db.execute("SELECT * FROM posts WHERE user_id=?", [@id])
    rows.map { |row| Post.new(row[0], row[1], row[2], row[3]) }
  end
end

class Post
  attr_accessor :id, :title, :body, :user_id

  def initialize(id, title, body, user_id)
    @id = id
    @title = title
    @body = body
    @user_id = user_id
  end

  def save
    db = SQLite3::Database.new('database.db')
    if @id.nil?
      db.execute("INSERT INTO posts (title, body, user_id) VALUES (?, ?, ?)", [@title, @body, @user_id])
      @id = db.last_insert_row_id
    else
      db.execute("UPDATE posts SET title=?, body=?, user_id=? WHERE id=?", [@title, @body, @user_id, @id])
    end
  end

  def delete
    db = SQLite3::Database.new('database.db')
    db.execute("DELETE FROM posts WHERE id=?", [@id])
  end

  def self.all
    db = SQLite3::Database.new('database.db')
    rows = db.execute("SELECT * FROM posts")
    rows.map { |row| Post.new(row[0], row[1], row[2], row[3]) }
  end

end

# Create a new user
new_user = User.new(nil, "John Doe", "johndoe@example.com")

# Save the user to the database
new_user.save

# Create a new post for the user
new_post = Post.new(nil, "My first post", "Hello world!", new_user.id)

# Save the post to the database
new_post.save

# Output all users
puts "All users:"
User.all.each do |user|
  puts "ID: #{user.id}, Name: #{user.name}, Email: #{user.email}"
end

# Output all posts
puts "\nAll posts:"
Post.all.each do |post|
  puts "ID: #{post.id}, Title: #{post.title}, Body: #{post.body}, User ID: #{post.user_id}"
end

# Output all posts for a specific user
puts "\nPosts by user #{new_user.name}:"
new_user.posts.each do |post|
  puts "ID: #{post.id}, Title: #{post.title}, Body: #{post.body}"
end

# All posts
posts = Post.all
posts.each do |post|
  puts "Post #{post.id}: #{post.title}\n#{post.body}\nby user #{post.user_id}\n\n"
end


