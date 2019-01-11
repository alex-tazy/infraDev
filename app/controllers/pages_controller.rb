class PagesController < ApplicationController

    def index
        if elector_signed_in?
            @elections = Election.all.where(groups: current_elector.groups)
        elsif super_admin_signed_in?
            @elections = Election.all
        end
    end
end
