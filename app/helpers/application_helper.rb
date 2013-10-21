module ApplicationHelper
def render_external_link args, results = Array.new
		text = args[:document].get(blacklight_config.show_fields[args[:field]][:text])
        url = "http://hcrc-dev.stanford.edu/?f%5Bkeywords_facet%5D%5B%5D=" + args[:document].get(args[:field])
        results << link_to(text, url, { :target => "_blank" }).html_safe
  end

end
