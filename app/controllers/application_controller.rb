class ApplicationController < ActionController::Base
  before_action :authenticate_admin!, except: [:new]


  def after_sign_in_path_for(resource)

    case resource

    when Admin
      admin_homes_top_path
    when Customer
      public_homes_top_path

    end
  end

  def after_sign_out_path_for(resource)

    case resource

    when Admin
      new_admin_session
    when Customer
      public_homes_top_path

    end
  end

end
