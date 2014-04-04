class UsersIndexController < ServiceController
  version 20140403 do
    result = FindUsers.perform( params.permit(:page, :per_page) )

    meta do
      total result.total
      page result.page

      links do
        if result.page < result.pages
          next users_url(page: (result.page + 1), per_page: params[:per_page])
        end

        if result.page > 1
          prev users_url(page: (result.page - 1), per_page: params[:per_page])
        end
      end
    end

    serialize result.users, each: UserSerializer
  end
end
