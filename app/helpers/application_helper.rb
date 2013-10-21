module ApplicationHelper
def render_external_link args, results = Array.new
		text = args[:document].get(blacklight_config.show_fields[args[:field]][:text])
		url_post = args[:document].get(args[:field])
        results << link_to(text, url_post, { :target => "_self" }).html_safe
  end

end
