module ApplicationHelper
def render_external_link args, results = Array.new
		text = args[:document].get(blacklight_config.show_fields[args[:field]][:text])
		url_pre = args[:document].get(args[:field]).split(',')
        results << link_to(link_text, url_pre, { :target => "_self" }).html_safe
  end

end
