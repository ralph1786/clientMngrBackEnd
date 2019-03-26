class ActiveStorage::DirectUploadsController < ApplicationController
    protect_from_forgery with: :null_session
    skip_before_action :verify_authenticity_token

    # def create
    #     blob = ActiveStorage::Blob.create_before_direct_upload!(blog_ags)
    #     render json: direct_upload_json(blob)
    # end
end