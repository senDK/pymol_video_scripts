
load Toc_ah70_average_last5ns_out_min.pdb
show cartoon   ,Toc_ah70_average_last5ns_out_min
hide sticks    ,Toc_ah70_average_last5ns_out_min
hide lines     ,Toc_ah70_average_last5ns_out_min
#set('seq_view',1)
color grey40,Toc_ah70_average_last5ns_out_min
_ set_view (\
_     0.901901245,   -0.386789739,   -0.192224160,\
_     0.123383626,   -0.195767775,    0.972858548,\
_    -0.413913965,   -0.901146889,   -0.128840938,\
_     0.000151586,   -0.000379924,  -36.217838287,\
_    32.474746704,   37.340274811,   41.540458679,\
_    28.592468262,   83.939727783,  -20.000000000 )
### cut above here and paste into script ##
select pep, resi 117-124
disable pep
show sticks,pep
hide cartoon,pep
util.cbag pep
##movie part1
#mset 1 x250
#util.mrock 1,250,45
#set ray_trace_frames=1
#mpng step01_
#mstop

#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
#part2 zoom
#mset 1 x100
mview store
#frame 100

hide sticks,pep
show cartoon,pep
select res124, resi 124
disable res124 
show sticks, res124
zoom res124, buffer=4.0 
clip far, -20
_ set_view (\
_     0.901901245,   -0.386789739,   -0.192224160,\
_     0.123383626,   -0.195767775,    0.972858548,\
_    -0.413913965,   -0.901146889,   -0.128840938,\
_     0.000000000,   -0.000000000,  -36.266098022,\
_    32.575309753,   37.487922668,   42.396770477,\
_    28.592468262,   63.939727783,  -20.000000000 )
### cut above here and paste into script ###
mview store
mview reinterpolate
#mpng step02_
#mstop

#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
#part3 rock res 124
#hide cartoon, resi 123
#select adjto124, br. all within 4 of resi 124 
select adjto124, resi 124+5+9+40+68+70+36
select ad, adjto124 and not resi 124 
show sticks, ad
show sticks, ad
clip far, -20
util.cbak ad
disable adjto124
disable ad
select lab, adjto124 and name CA
disable lab
label lab,  ("%s, %s") % (resn, resi)
set label_color, white, lab
set label_font_id, 12 
cmd.hide("((byres (ad))&(n. c,o,h|(n. n&!r. pro)))")

##movie part3
#mset 1 x200
set cartoon_transparency, 0.6, Toc_ah70_average_last5ns_out_min 
#util.mrock 1,200,45
set ray_trace_frames=1
set ray_shadow, off
#mpng step03_
#mstop

##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
##part4 move to res 123
#mset 1 x50
_ set_view (\
_     0.901901245,   -0.386789739,   -0.192224160,\
_     0.123383626,   -0.195767775,    0.972858548,\
_    -0.413913965,   -0.901146889,   -0.128840938,\
_     0.000000000,   -0.000000000,  -36.266098022,\
_    32.575309753,   37.487922668,   42.396770477,\
_    28.592468262,   63.939727783,  -20.000000000 )

mview store
#frame 50

hide cartoon,resi 123 
hide sticks, adjto124
hide label, lab
color grey40,Toc_ah70_average_last5ns_out_min
show cartoon, pep 
util.cbag pep
select res123, resi 123
disable res123
show sticks, res123
util.cbag res123 
zoom res123, buffer=4.0

#select adjto123, br. all within 4 of resi 123
select adjto123, resi 123+9+12+40+70+74+121
select ad, adjto123 and not resi 123
show sticks, ad
show sticks, ad

select allexcept121, resi 9+12+40+70+74
cmd.hide("((byres (allexcept121))&(n. c,o,h|(n. n&!r. pro)))")
disable allexcept121

clip far, -20
util.cbak ad
disable adjto123
disable ad
select lab, adjto123 and name CA
disable lab
label lab,  ("%s, %s") % (resn, resi)
set label_color, white, lab
set label_font_id, 12
_ set_view (\
_     0.903797388,   -0.417880625,   -0.092152715,\
_     0.225237399,    0.281463712,    0.932757437,\
_    -0.363836944,   -0.863801718,    0.348512352,\
_    -0.000426868,    0.000080062,  -38.012550354,\
_    31.083017349,   38.342262268,   37.434883118,\
_    29.965694427,   66.050048828,  -20.000000000 )



mview store
mview reinterpolate
set ray_trace_frames=1
set ray_shadow,off
#mpng step04_
#mstop
#

##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
##movie part5 rock resi 123
#mset 1 x200
set cartoon_transparency, 0.6, Toc_ah70_average_last5ns_out_min
#util.mrock 1,200,45
set ray_trace_frames=1
#mpng step05_
#mstop
##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
##part6 move to resi 122
hide stick, res124
hide cartoon, res124
delete res124 
hide stick, adjto124
hide cartoon, adjto124
delete adjto124

hide stick, ad
hide cartoon, ad
delete ad


hide stick, lab
hide cartoon, lab
hide label
delete lab

hide stick res123
delete res123
hide stick, adjto123
delete adjto123
hide stick, allexcept121
delete allexcept121

hide label, lab
color grey40,Toc_ah70_average_last5ns_out_min

#mset 1 x50
set_view (\
    0.903797388,   -0.417880625,   -0.092152715,\
    0.225237399,    0.281463712,    0.932757437,\
   -0.363836944,   -0.863801718,    0.348512352,\
   -0.000426868,    0.000080062,  -38.012550354,\
   31.083017349,   38.342262268,   37.434883118,\
   29.965694427,   66.050048828,  -20.000000000 )
mview store
#frame 50
show cartoon, Toc_ah70_average_last5ns_out_min
color grey40,Toc_ah70_average_last5ns_out_min

select pep, resi 117+118+119+120+121+122+123+124
show cartoon, pep
util.cbag pep 

select res122, resi 122
disable res122
show sticks, res122
util.cbag res122 
zoom res122, buffer=4.0

select adjto122, resi 70+73+74+104+121
select ad, resi 70+73+74+104+121+122
disable ad

show sticks, adjto122
clip far, -20
util.cbak adjto122
disable adjto122
#hide cartoon, res122
cmd.hide("((byres (adjto122))&(n. c,o,h|(n. n&!r. pro)))")

select lab, ad and name CA
disable lab
label lab,  ("%s, %s") % (resn, resi)
set label_color, white, lab
set label_font_id, 12

_ set_view (\
_     0.931208909,   -0.358462155,   -0.065639652,\
_    -0.031921607,   -0.259643227,    0.965166211,\
_    -0.363013655,   -0.896706104,   -0.253231287,\
_     0.000000000,   -0.000000000,  -41.952121735,\
_    26.250133514,   39.712867737,   38.067134857,\
_   -13.772879601,   97.677207947,  -20.000000000 )

mview store
mview reinterpolate
#set ray_trace_frames=1
set ray_shadow,off
#mpng step06_
#mstop

##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
###movie part7 rock resi 122
#mset 1 x200
set cartoon_transparency, 0.6, Toc_ah70_average_last5ns_out_min
util.mrock 1,200,45
set ray_trace_frames=1
#mpng step07_
#mstop

##----------------------------------
# zoom to 121

hide stick, res122
hide cartoon, res122
delete res122
hide stick, adjto122
hide cartoon, adjto122
delete adjto122

hide stick, ad
hide cartoon, ad
delete ad


hide stick, lab
hide cartoon, lab
hide label
delete lab

hide stick, allexcept121
delete allexcept121

hide label, lab
color grey40,Toc_ah70_average_last5ns_out_min

#mset 1 x50
_ set_view (\
_     0.931208909,   -0.358462155,   -0.065639652,\
_    -0.031921607,   -0.259643227,    0.965166211,\
_    -0.363013655,   -0.896706104,   -0.253231287,\
_     0.000000000,   -0.000000000,  -41.952121735,\
_    26.250133514,   39.712867737,   38.067134857,\
_   -13.772879601,   97.677207947,  -20.000000000 )
mview store
#frame 50
show cartoon, Toc_ah70_average_last5ns_out_min
color grey40,Toc_ah70_average_last5ns_out_min

select pep, resi 117+118+119+120+121+122+123+124
show cartoon, pep
util.cbag pep 

select res121, resi 121
disable res121
show sticks, res121
util.cbag res121
zoom res121, buffer=4.0



select adjto121, resi 12+43+74+104+122+123+121
disable adjto121

select ad, resi 12+43+74+104+122+123
disable ad


select side1, resi 12+43+74+104
disable side1

show sticks, adjto121
clip far, -20
util.cbak adjto121
disable adjto121

util.cbag res121
cmd.hide("((byres (side1))&(n. c,o,h|(n. n&!r. pro)))")

select lab, adjto121 and name CA
disable lab
label lab,  ("%s, %s") % (resn, resi)
set label_color, white, lab
set label_font_id, 12

_ set_view (\
_     0.926921904,   -0.371709108,    0.050772145,\
_    -0.172514692,   -0.302116930,    0.937518597,\
_    -0.333137125,   -0.877802789,   -0.344178557,\
_    -0.000917215,    0.000762865,  -50.228488922,\
_    26.965660095,   37.941493988,   36.334377289,\
_    33.638896942,   86.734664917,  -20.000000000 )


mview store
mview reinterpolate
#set ray_trace_frames=1
set ray_shadow,off
#mpng step08_
#mstop
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
##movie part9 rock resi 121
#mset 1 x200
set cartoon_transparency, 0.6, Toc_ah70_average_last5ns_out_min
util.mrock 1,200,45
set ray_trace_frames=1
#mpng step09_
#mstop
##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
##part10 move to resi 120

hide stick, res121
hide cartoon, res121
delete res121
hide stick, adjto121
hide cartoon, adjto121
delete adjto121

hide stick, ad
hide cartoon, ad
delete ad


hide stick, lab
hide cartoon, lab
hide label
delete lab

hide stick, allexcept121
delete allexcept121

hide label, lab
color grey40,Toc_ah70_average_last5ns_out_min

#mset 1 x50
_ set_view (\
_     0.926921904,   -0.371709108,    0.050772145,\
_    -0.172514692,   -0.302116930,    0.937518597,\
_    -0.333137125,   -0.877802789,   -0.344178557,\
_    -0.000917215,    0.000762865,  -50.228488922,\
_    26.965660095,   37.941493988,   36.334377289,\
_    33.638896942,   86.734664917,  -20.000000000 )

mview store
#frame 50

show cartoon, Toc_ah70_average_last5ns_out_min
color grey40,Toc_ah70_average_last5ns_out_min

select pep, resi 117+118+119+120+121+122+123+124
show cartoon, pep
util.cbag pep 

select res120, resi 120
disable res120
show sticks, res120
util.cbag res120
zoom res120, buffer=4.0



select adjto120, resi 12+120
disable adjto120

show sticks, adjto120
clip far, -20
util.cbak adjto120
disable adjto120

select ad, resi 12
disable ad

util.cbag res120
cmd.hide("((byres (ad))&(n. c,o,h|(n. n&!r. pro)))")

select lab, adjto120 and name CA
disable lab
label lab,  ("%s, %s") % (resn, resi)
set label_color, white, lab
set label_font_id, 12

_ set_view (\
_     0.855273128,   -0.427655578,    0.292443663,\
_    -0.458649606,   -0.362456620,    0.811310828,\
_    -0.240955487,   -0.828061104,   -0.506170869,\
_    -0.001247453,    0.002804076,  -43.911117554,\
_    29.938385010,   38.358871460,   30.009716034,\
_    11.099735260,   74.659637451,  -20.000000000 )

mview store
mview reinterpolate
set ray_trace_frames=1
set ray_shadow,off
#mpng step10_
#mstop
#
##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
###movie part11 rock resi 120
mset 1 x200
set cartoon_transparency, 0.6, Toc_ah70_average_last5ns_out_min
util.mrock 1,200,45
set ray_trace_frames=1
mpng step11_
mstop
#
