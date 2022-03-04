module DefaultPageContentConcern
    extend ActiveSupport::Concern

    included do
        before_action :set_pages_defaults
    end

    def set_pages_defaults
        @page_title = "Portfolio | My Portfolio"
        @seo_keywords = "Juliano Marques portfolio"
    end
end