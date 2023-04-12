class Api::V1::RestaurantsController < Api::V1::BaseController
  def index
    @books = policy_scope(Book)
  end
end
