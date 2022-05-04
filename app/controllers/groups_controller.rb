class GroupsController < Panda::Api::BaseController
  def create
    user = current_user

    # TODO: 把下面的内容用kafka来削峰填谷
    code = Code.create!(test_id: params[:test_id], community: params[:community], tested_at: params[:tested_at], ids: params[:ids])

    render json: code
  end
end