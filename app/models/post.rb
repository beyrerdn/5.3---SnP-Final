class Post < ActiveRecord::Base
<<<<<<< HEAD

  belongs_to :author

  validates_presence_of :title
  validate :validate_title
  validates_presence_of :body
  validates_presence_of :author



  def validate_title
    errors.add :title, "Your post is #{10 - title.length} characters too short." if title.length < 10
  end
=======
  belongs_to :author

  validates_presence_of :title
>>>>>>> bd2e8496480584370d72914f80b6da766f4216ab

  def self.posts_by_author(author_last_name)
    all.select{|post| post.author.last_name == author_last_name}.sort_by{|post| post.created_at}
  end

end
