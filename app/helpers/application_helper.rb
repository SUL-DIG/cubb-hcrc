module ApplicationHelper
def render_external_link args, results = Array.new
		text = args[:document].get(blacklight_config.show_fields[args[:field]][:text])
        results << link_to(text, search_action_url(add_facet_params(args[:field][:value])), { :target => "_self" }).html_safe
        end
        
end
