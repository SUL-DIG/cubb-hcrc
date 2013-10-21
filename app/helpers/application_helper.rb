module ApplicationHelper
def render_external_link args, results = Array.new
		text = args[:document].get(blacklight_config.show_fields[args[:field]][:text])
		link_text = text.split (',')
		url_pre = args[:document].get(args[:field])
		url_post = url_pre.split
        results << link_to(link_text, url_post, { :target => "_self" }).html_safe
  end

end
