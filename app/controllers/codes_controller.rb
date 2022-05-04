class CodesController < Panda::Api::BaseController
  def show
    user = current_user
    time = DateTime.now
    md5 = Digest::MD5.new
    hash = md5.update(user.name + user.id_number + time)
    render json: {name: user.name, id_number: user.id_number, time: time, hash: hash}
  end
end