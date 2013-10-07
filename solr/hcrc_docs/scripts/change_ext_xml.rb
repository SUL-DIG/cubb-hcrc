require 'fileutils'
Dir.glob('/Users/hettelj/Desktop/solr-4.3.1/hcrc/hcrc_docs/*.txt').each do |f|
    FileUtils.mv f, "#{File.dirname(f)}/#{File.basename(f,'.*')}.xml"
end