module ApplicationHelper
def render_external_link args, results = Array.new
		text = args[:document].get(blacklight_config.show_fields[args[:field]][:text])
		url = args[:document].get(blacklight_config.facet_params[args[:field]])
        results << link_to(text, url, {}).html_safe
        end
        
end
