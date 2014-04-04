class FindUsers
  include Interactor

  DEFAULT_PER_PAGE = 20

  def setup
    context[:page] = (context[:page] || 1).to_i
    context[:per_page] = (context[:per_page] || DEFAULT_PER_PAGE).to_i
  end

  def perform
    users = User.page(context.page).per(context.per)

    context[:users] = users
    context[:pages] = users.total_pages
    context[:total] = users.total_count
  end
end
