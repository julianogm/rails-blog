module DefaultPageContentConcern
    extend ActiveSupport::Concern

    included do
        before_action :set_pages_defaults
    end

    def set_pages_defaults
        @page_title = "Blog | My Blog"
        @seo_keywords = "Juliano Marques Blog"
    end
end