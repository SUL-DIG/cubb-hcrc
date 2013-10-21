module ApplicationHelper
def render_external_link args, results = Array.new
		text = args[:document].get(blacklight_config.show_fields[args[:field]][:text])
		url = link_to(text, args[:document].get(args[:field]), { :target => "_self" }).html_safe
        results << url
        end
        end
