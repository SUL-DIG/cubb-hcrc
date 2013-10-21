module ApplicationHelper
def render_external_link args, results = Array.new
		link_text = args[:document].get(blacklight_config.show_fields[args[:field]][:text])
        results << link_to(link_text, ("/?f%5Bkeywords_facet%5D%5B%5D=" + args[:document].get(args[:field])), { :target => "_blank" }).html_safe
  end

end
