module ApplicationHelper
def render_external_link args, results = Array.new
		text = args[:document].get(blacklight_config.show_fields[args[:field]][:text])
        url = search_action_url(add_facet_params(args[:field]))
        results << link_to(text, url, { :target => "_self" }).html_safe
        end
        
end
