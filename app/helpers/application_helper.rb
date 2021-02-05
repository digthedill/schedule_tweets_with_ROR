module ApplicationHelper

    def render_title (title = '') 
        if title.empty?
            title = "Tweeter"
        else
            title = "#{title} | Tweeter"
        end
    end
end
