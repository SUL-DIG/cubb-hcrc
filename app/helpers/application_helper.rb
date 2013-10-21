module ApplicationHelper
def render_external_link args, results = Array.new
        results << link_to((args[:document].get(blacklight_config.show_fields[args[:field]][:text]), ("/?f%5Bkeywords_facet%5D%5B%5D=" + args[:document].get(args[:field])), { :target => "_self" }).html_safe
  end

end
