# Change File Names
print "Which file? "
filename = gets.chomp

# Converting OCLC output to SOLR document structure.
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

#Doing replacements and saving files.
outdata = File.read(filename).gsub(/TY  -/, "#{replace_TY}").gsub(/\nA1  -/, "#{replace_A1}").gsub(/\nA2  -/, "#{replace_A2}").gsub(/\nT1  -/, "#{replace_T1}").gsub(/\nY1  -/, "#{replace_Y1}").gsub(/\nSP  -/, "#{replace_SP}").gsub(/\nKW  -/, "#{replace_KW}").gsub(/\nN1  -/, "#{replace_N1}").gsub(/\nPB  -/, "#{replace_PB}").gsub(/\nCY  -/, "#{replace_CY}").gsub(/\nLA  -/, "#{replace_LA}").gsub(/\nD1  -/, "#{replace_D1}").gsub(/\nCN  -/, "#{replace_CN}").gsub(/\nSC  -/, "#{replace_SC}").gsub(/\nT2  -/, "#{replace_T2}").gsub(/\nV1  -/, "#{replace_V1}").gsub(/\nV2  -/, "#{replace_V2}").gsub(/\nIS  -/, "#{replace_IS}").gsub(/\nED  -/, "#{replace_ED}").gsub(/\nG1  -/, "#{replace_G1}").gsub(/\nG2  -/, "#{replace_G2}").gsub(/\nER  -/, "#{replace_ER}").gsub(/\nAB  -/, "#{replace_AB}").gsub(.gsub(/"> /, "#{replace_space}")
File.open(filename, 'w') do |out|
  out << outdata
end  


puts "#{filename} has been processed."