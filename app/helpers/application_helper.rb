module ApplicationHelper
def render_external_link args, results = Array.new
		link_text = args[:document].get(blacklight_config.show_fields[args[:field]][:text])
        url = "hcrc-dev.stanford.edu/?f%5Bkeywords_facet%5D%5B%5D=" + args[:document].get(args[:field])
        results << link_to(link_text, url, { :target => "_blank" }).html_safe
  end

end
