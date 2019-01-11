module Accessible
    extend ActiveSupport::Concern
    included do
      before_action :check_user
    end
  
    protected
    def check_user
      if current_super_admin
        flash.clear
        redirect_to(elections_path) && return
      elsif current_elector
        flash.clear
        redirect_to(root_path) && return
      end
    end
end