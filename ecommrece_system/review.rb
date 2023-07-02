class Review
  attr_reader :user, :product, :rating, :comment

  def initialize(user, product, rating, comment)
    @user = user
    @product = product
    @rating = rating
    @comment = comment
  end
end