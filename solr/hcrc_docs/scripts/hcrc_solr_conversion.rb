# Change File Names
print "Which file? "
filename = gets.chomp + '.txt'
new_file = filename + '.new'


# Replacing spreadsheet columns with xml tags.
replace_TY = '<doc><field name="type">'
replace_A1 = '</field><field name="author">'
replace_A2 = '</field><field name="corp_author">'
replace_T1 = '</field><field name="title">'
replace_Y1 = '</field><field name="year">'
replace_SP = '</field><field name="pages">'
replace_KW = '</field><field name="keywords">'
replace_N1 = '</field><field name="notes">'
replace_PB = '</field><field name="publisher">'
replace_CY = '</field><field name="pub_place">'
replace_LA = '</field><field name="language">'
replace_D1 = '</field><field name="date">'
replace_CN = '</field><field name="call_number">'
replace_SC = '</field><field name="state_country">'
replace_T2 = '</field><field name="series_title">'
replace_V1 = '</field><field name="series_vol">'
replace_V2 = '</field><field name="series_num_vol">'
replace_IS = '</field><field name="issue">'
replace_ED = '</field><field name="edition">'
replace_G1 = '</field><field name="grade_level_group">'
replace_G2 = '</field><field name="grade_level_number">'
replace_AB = '</field><field name="abstract">'
replace_ER = '</field></doc>'
replace_amp = '&amp;'
replace_space = '">'
replace_space2 = '<'

# Adding grades.
add_1g = '<field name="grade_level_number">1st grade</field>'
add_2g = '<field name="grade_level_number">2nd grade</field>'
add_3g = '<field name="grade_level_number">3rd grade</field>'
add_4g = '<field name="grade_level_number">4th grade</field>'
add_5g = '<field name="grade_level_number">5th grade</field>'
add_6g = '<field name="grade_level_number">6th grade</field>'
add_7g = '<field name="grade_level_number">7th grade</field>'
add_8g = '<field name="grade_level_number">8th grade</field>'
add_9g = '<field name="grade_level_number">9th grade</field>'
add_10g = '<field name="grade_level_number">10th grade</field>'
add_11g = '<field name="grade_level_number">11th grade</field>'
add_12g = '<field name="grade_level_number">12th grade</field>'
replace_BOOK = '<field name="type">Book'
replace_JOUR = '<field name="type">Journal'
replace_highschools = '>High school<'
replace_middleschools = '>Middle school<'
replace_elementaryschools = '>Elementary school<'
replacerem_ty = '<doc><field name="type">'
replacerem_gl = '</field><field name="grade_level_number">'
replaceth = 'th grade<'

#Add <add> tags.
File.open(new_file,'w') do |fo|
  fo.puts "<add>"
	File.foreach(filename) do |li|
    	fo.puts li
	end
end

File.open(new_file,'a') do |f|
  f.puts "</add>"
end

#Replace columns with SOLR xml tags.
outdata = File.read(filename).gsub(/TY  -/, "#{replace_TY}").gsub(/\nA1  -/, "#{replace_A1}").gsub(/\nA2  -/, "#{replace_A2}").gsub(/\nT1  -/, "#{replace_T1}").gsub(/\nY1  -/, "#{replace_Y1}").gsub(/\nSP  -/, "#{replace_SP}").gsub(/\nKW  -/, "#{replace_KW}").gsub(/\nN1  -/, "#{replace_N1}").gsub(/\nPB  -/, "#{replace_PB}").gsub(/\nCY  -/, "#{replace_CY}").gsub(/\nLA  -/, "#{replace_LA}").gsub(/\nD1  -/, "#{replace_D1}").gsub(/\nCN  -/, "#{replace_CN}").gsub(/\nSC  -/, "#{replace_SC}").gsub(/\nT2  -/, "#{replace_T2}").gsub(/\nV1  -/, "#{replace_V1}").gsub(/\nV2  -/, "#{replace_V2}").gsub(/\nIS  -/, "#{replace_IS}").gsub(/\nED  -/, "#{replace_ED}").gsub(/\nG1  -/, "#{replace_G1}").gsub(/\nG2  -/, "#{replace_G2}").gsub(/\nAB  -/, "#{replace_AB}").gsub(/ER  -/, "#{replace_ER}").gsub(/\tER/, "#{replace_ER}").gsub(/"> /, "#{replace_space}").gsub(/& /, "#{replace_amp}")
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
