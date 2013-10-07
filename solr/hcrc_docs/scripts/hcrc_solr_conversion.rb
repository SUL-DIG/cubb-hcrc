# Change File Names
print "Which file? "
filename = gets.chomp
new_file = filename + '.new'


# Replacing spreadsheet columns with xml tags.
replace_title = '<relatedItem type="constituent"><titleInfo><title>'
replace_annotator = '</title></titleInfo><name type="personal"><namePart>'
replace_annotator_occ1 = '</namePart><role><roleTerm>annotator</roleTerm></role><description>'
replace_annotator_occ2 = ', '
replace_author = '</description></name><name type="personal"><namePart>'
replace_author_occ1 = '</namePart><role><roleTerm>author</roleTerm></role><description>'
replace_author_occ2 = ', '
replace_authorofcitedbook = '</description></name><name type="personal"><namePart>'
replace_authorofcitedbook_occ1 = '</namePart><role><roleTerm>author of cited book</roleTerm></role><description>'
replace_authorofcitedbook_occ2 = ', '
replace_authorofpostscript = '</description></name><name type="personal"><namePart>'
replace_authorofpostscript_occ1 = '</namePart><role><roleTerm>author of postscript</roleTerm></role><description>'
replace_authorofpostscriptk_occ2 = ', '
replace_copyist = '</description></name><name type="personal"><namePart>'
replace_copyist_occ1 = '</namePart><role><roleTerm>copyist</roleTerm></role><description>'
replace_copyist_occ2 = ', '
replace_exlibris = '</description></name><name type="personal"><namePart>'
replace_exlibris_occ1 = '</namePart><role><roleTerm>ex libris</roleTerm></role><description>'
replace_exlibris_occ2 = ', '
replace_presumedauthor = '</description></name><name type="personal"><namePart>'
replace_presumedauthor_occ1 = '</namePart><role><roleTerm>presumed author</roleTerm></role><description>'
replace_presumedauthor_occ2 = ', '
replace_presumedrecipient = '</description></name><name type="personal"><namePart>'
replace_presumedrecipient_occ1 = '</namePart><role><roleTerm>presumed recipient</roleTerm></role><description>'
replace_presumedrecipient_occ2 = ', '
replace_presumedsender = '</description></name><name type="personal"><namePart>'
replace_presumedsender_occ1 = '</namePart><role><roleTerm>presumed sender</roleTerm></role><description>'
replace_presumedsender_occ2 = ', '
replace_quotedname = '</description></name><name type="personal"><namePart>'
replace_quotedname_occ1 = '</namePart><role><roleTerm>quoted name</roleTerm></role><description>'
replace_quotedname_occ2 = ', '
replace_recipient = '</description></name><name type="personal"><namePart>'
replace_recipient_occ1 = '</namePart><role><roleTerm>recipient</roleTerm></role><description>'
replace_recipient_occ2 = ', '
replace_relatedname = '</description></name><name type="personal"><namePart>'
replace_relatedname_occ1 = '</namePart><role><roleTerm>related name</roleTerm></role><description>'
replace_relatedname_occ2 = ', '
replace_sender = '</description></name><name type="personal"><namePart>'
replace_sender_occ1 = '</namePart><role><roleTerm>sender</roleTerm></role><description>'
replace_sender_occ2 = ', '
replace_signatory = '</description></name><name type="personal"><namePart>'
replace_signatory_occ1 = '</namePart><role><roleTerm>signatory</roleTerm></role><description>'
replace_signatory_occ2 = ', '
replace_translator = '</description></name><name type="personal"><namePart>'
replace_translator_occ1 = '</namePart><role><roleTerm>translator</roleTerm></role><description>'
replace_translator_occ2 = ', '
replace_language1 = '</description></name><language><languageTerm type="code">'
replace_language2 = '</languageTerm><language><languageTerm type="code">'
replace_date_letter = '</language><typeOfResource>mixed material</typeOfResource><genre></genre><originInfo><!-- which item in title are this date and place associated with? --><dateOther type="letter">'
replace_letter_place = '</dateOther><place><placeTerm>'
replace_numberoffiles = '</placeTerm></place></originInfo><physicalDescription><internetMediaType>image/tiff</internetMediaType><extent unit="files">'
replace_pagestart = '</extent></physicalDescription><part><extent unit="page"><start>'
replace_pageend = '</start><end>'
replace_comments = '</end></extent></part><abstract>'
replace_subject1 = '</abstract><subject><topic>'
replace_subject2 = '</topic><topic>'
replace_acompdate = '<relatedItem type="constituent"><originInfo><dateOther type="accompanying letter">'
replace_acompplace = '</dateOther><place><placeTerm>'
replace_oldstyleletterdate = '</placeTerm></place></originInfo></relatedItem><relatedItem type="constituent"><originInfo><dateOther type="old style letter">'
replace_oldestyleletterplace = '</dateOther><place><placeTerm>'
replace_compositiondate = '</placeTerm></place></originInfo></relatedItem><relatedItem type="constituent"><originInfo><dateOther type="composition">'
replace_compositionplace = '</dateOther><place><placeTerm>'
replace_copydate = '</placeTerm></place></originInfo></relatedItem><relatedItem type="constituent"><originInfo><dateOther type="copy">'
replace_copyplace = '</dateOther><place><placeTerm>'
replace_newdocumentdate = '</placeTerm></place></originInfo></relatedItem><relatedItem type="constituent"><originInfo><dateOther type="new document">'
replace_newdocumentplace = '</dateOther><place><placeTerm>'
replace_letter2date = '</placeTerm></place></originInfo></relatedItem><relatedItem type="constituent"><originInfo><dateOther type="letter">'
replace_letter2place = '</dateOther><place><placeTerm>'
replace_letterabincdate = '</placeTerm></place></originInfo></relatedItem><relatedItem type="constituent"><originInfo><dateOther type="letter ab inc.">'
replace_letterabincplace = '</dateOther><place><placeTerm>'
replace_newstyleletterdate = '</placeTerm></place></originInfo></relatedItem><relatedItem type="constituent"><originInfo><dateOther type="new style letter">'
replace_newstyleletterplace = '</dateOther><place><placeTerm>'
replace_letterreferredtodate = '</placeTerm></place></originInfo></relatedItem><relatedItem type="constituent"><originInfo><dateOther type="letter referred to">'
replace_letterreferredtoplace = '</dateOther><place><placeTerm>'
replace_manuscriptreferredtodate = '</placeTerm></place></originInfo></relatedItem><relatedItem type="constituent"><originInfo><dateOther type="manuscript referred to">'
replace_manuscriptreferredtoplace = '</dateOther><place><placeTerm>'
replace_observationdate = '</placeTerm></place></originInfo></relatedItem><relatedItem type="constituent"><originInfo><dateOther type="observation">'
replace_observationplace = '</dateOther><place><placeTerm>'
replace_originalsentdate = '</placeTerm></place></originInfo></relatedItem><relatedItem type="constituent"><originInfo><dateOther type="original sent">'
replace_originalsentplace = '</dateOther><place><placeTerm>'
replace_proclamationdate = '</placeTerm></place></originInfo></relatedItem><relatedItem type="constituent"><originInfo><dateOther type="proclamation">'
replace_proclamationplace = '</dateOther><place><placeTerm>'
replace_publicationdate = '</placeTerm></place></originInfo></relatedItem><relatedItem type="constituent"><originInfo><dateOther type="publication">'
replace_publicationplace = '</dateOther><place><placeTerm>'
replace_quoteddate = '</placeTerm></place></originInfo></relatedItem><relatedItem type="constituent"><originInfo><dateOther type="quoted">'
replace_quotedplace = '</dateOther><place><placeTerm>'
replace_endoffile = '</placeTerm></place></originInfo></relatedItem></relatedItem>'
replace_amp = '&amp;'



# Adding language codes.
change_latin = '<languageTerm type="code">lat</languageTerm>'
change_german = '<languageTerm type="code">ger</languageTerm>'
change_italian = '<languageTerm type="code">ita</languageTerm>'
change_greek = '<languageTerm type="code">gre</languageTerm>'
change_arabic = '<languageTerm type="code">ara</languageTerm>'
change_spanish = '<languageTerm type="code">spa</languageTerm>'


#Add <add> tags.
File.open(new_file,'w') do |fo|
  fo.puts '<?xml version="1.0" encoding="UTF-8"?><modsCollection xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://www.loc.gov/mods/v3" xsi:schemaLocation="http://www.loc.gov/mods/v3 http://www.loc.gov/standards/mods/v3/mods-3-5.xsd">
    <mods version="3.5">
        <titleInfo>
            <title>Correspondence of Athanasius Kircher</title>
        </titleInfo>
        <name type="personal">
            <namePart>Gorman, Michael J.</namePart>
            <role>
                <roleTerm type="text">project director</roleTerm>
            </role>
        </name>
        <name type="personal">
            <namePart>Wilding, Nick</namePart>
            <role>
                <roleTerm type="text">project director</roleTerm>
            </role>
        </name>
        <typeOfResource collection="yes">mixed material</typeOfResource>
        <part>
            <detail type="volume">
                <number>555</number>
            </detail>
        </part>
        <typeOfResource>mixed material</typeOfResource>
        <physicalDescription>
            <internetMediaType>image/tiff</internetMediaType>
            <extent>584 images</extent>
        </physicalDescription>
        <abstract>"The Athanasius Kircher correspondence project was created with the goal of making the manuscript correspondence of Athanasius Kircher available on the Internet. The project was commenced through the collaboration of the Istituto e Museo di Storia della Scienza in Florence, the Pontifical Gregorian University in Rome and the European University Institute in Fiesole, under the direction of Michael John Gorman and Nick Wilding. Since September 2000, the digital collection has been rehoused at Stanford University." -- Introduction.</abstract>
        <location>
            <physicalLocation>Archives of the Pontifical Gregorian University</physicalLocation>
            <shelfLocator>APUG 555</shelfLocator>
        </location>'
        
	File.foreach(filename) do |li|
    	fo.puts li
	end
end

File.open(new_file,'a') do |f|
  f.puts "</mods></modsCollection>"
end

#Replace columns with SOLR xml tags.
outdata = File.read(filename).gsub(/TY  -/, "#{replace_TY}").gsub(/\nA1  -/, "#{replace_A1}").gsub(/\nA2  -/, "#{replace_A2}").gsub(/\nT1  -/, "#{replace_T1}").gsub(/\nY1  -/, "#{replace_Y1}").gsub(/\nSP  -/, "#{replace_SP}").gsub(/\nKW  -/, "#{replace_KW}").gsub(/\nN1  -/, "#{replace_N1}").gsub(/\nPB  -/, "#{replace_PB}").gsub(/\nCY  -/, "#{replace_CY}").gsub(/\nLA  -/, "#{replace_LA}").gsub(/\nD1  -/, "#{replace_D1}").gsub(/\nCN  -/, "#{replace_CN}").gsub(/\nSC  -/, "#{replace_SC}").gsub(/\nT2  -/, "#{replace_T2}").gsub(/\nV1  -/, "#{replace_V1}").gsub(/\nV2  -/, "#{replace_V2}").gsub(/\nIS  -/, "#{replace_IS}").gsub(/\nED  -/, "#{replace_ED}").gsub(/\nG1  -/, "#{replace_G1}").gsub(/\nG2  -/, "#{replace_G2}").gsub(/\nAB  -/, "#{replace_AB}").gsub(/ER  -/, "#{replace_ER}").gsub(/ER/, "#{replace_ER}").gsub(/"> /, "#{replace_space}").gsub(/& /, "#{replace_amp}")
File.open(new_file, 'w') do |out|
  out << outdata
end  

puts "Columns have been converted to solr document tags."

#Doing grade replacements
outdata = File.read(new_file).gsub(/TY  _ /, "#{replacerem_ty}").gsub(/Ty  - /, "#{replacerem_ty}").gsub(/G3  - /, "#{replacerem_gl}").gsub(/<field name="grade_level_number">1st<\/field>/, "#{add_1g}").gsub(/<field name="grade_level_number">2nd<\/field>/, "#{add_2g}").gsub(/<field name="grade_level_number">3rd<\/field>/, "#{add_3g}").gsub(/<field name="grade_level_number">4th<\/field>/, "#{add_4g}").gsub(/<field name="grade_level_number">5th<\/field>/, "#{add_5g}").gsub(/<field name="grade_level_number">6th<\/field>/, "#{add_6g}").gsub(/<field name="grade_level_number">7th<\/field>/, "#{add_7g}").gsub(/<field name="grade_level_number">8th<\/field>/, "#{add_8g}").gsub(/<field name="grade_level_number">9th<\/field>/, "#{add_9g}").gsub(/<field name="grade_level_number">9th <\/field>/, "#{add_9g}").gsub(/<field name="grade_level_number">10th<\/field>/, "#{add_10g}").gsub(/<field name="grade_level_number">11th<\/field>/, "#{add_11g}").gsub(/<field name="grade_level_number">12th<\/field>/, "#{add_12g}").gsub(/<field name="type">BOOK/, "#{replace_BOOK}").gsub(/<field name="type">JOUR/, "#{replace_JOUR}").gsub(/>High schools</, "#{replace_highschools}").gsub(/>Middle schools</, "#{replace_middleschools}").gsub(/>Elementary schools</, "#{replace_elementaryschools}")
File.open(new_file, 'w') do |out|
  out << outdata
end  
puts "Grade level has been systematically fixed."

File.open(new_file,'a') do |f|
  f.puts "</add>"
end

require 'fileutils'
Dir.glob(new_file) do |f|
    FileUtils.mv f, "#{File.dirname(f)}/#{File.basename(f,'.*')}.xml"
puts "Check your new SOLR xml file before indexing."
end
