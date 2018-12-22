load Toc_ah70_average_last5ns_out_min.pdb
show cartoon   ,Toc_ah70_average_last5ns_out_min
hide sticks    ,Toc_ah70_average_last5ns_out_min
hide lines     ,Toc_ah70_average_last5ns_out_min
#set('seq_view',1)
color grey40,Toc_ah70_average_last5ns_out_min
set_view (\
     0.748916388,    0.612756371,   -0.252296537,\
    -0.394108921,    0.105784282,   -0.912956178,\
    -0.532729506,    0.783160567,    0.320716828,\
     0.000000000,    0.000000000, -128.791824341,\
    35.063995361,   34.599014282,   33.414527893,\
   101.540458679,  156.043197632,  -20.000000000 )
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
set_view (\
     0.624351680,    0.276539743,   -0.730553865,\
    -0.658855617,   -0.315983057,   -0.682688594,\
    -0.419632137,    0.907567084,   -0.015085885,\
     0.000000000,    0.000000000,  -35.530593872,\
    31.701843262,   27.152385712,   26.090309143,\
    29.349061966,   41.712131500,  -20.000000000 )
### cut above here and paste into script ###

mview store
#frame 100

hide sticks,pep
show cartoon,pep
select res124, resi 124
disable res124 
show sticks, res124
zoom res124, buffer=4.0 
clip far, -20

mview store
#mview reinterpolate
#mpng step02_
#mstop

#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
#part3 rock res 124
hide cartoon, resi 123
select adjto124, br. all within 4 of resi 124 
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

##movie part3
mset 1 x200
#set cartoon_transparency, 0.6, Toc_ah70_average_last5ns_out_min 
#util.mrock 1,200,45
#set ray_trace_frames=1
#set ray_shadow, off
#mpng step03_
#mstop

##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
##part4 move to res 123
#mset 1 x50
set_view (\
     0.624351680,    0.276539743,   -0.730553865,\
    -0.658855617,   -0.315983057,   -0.682688594,\
    -0.419632137,    0.907567084,   -0.015085885,\
     0.000000000,    0.000000000,  -35.530593872,\
    31.701843262,   27.152385712,   26.090309143,\
    29.349061966,   41.712131500,  -20.000000000 )

mview store
#frame 50

hide cartoon,resi 123 
hide sticks, adjto124
hide label, lab
color grey40,Toc_ah70_average_last5ns_out_min
#hide sticks ad

select res123, resi 123
disable res123
show sticks, res123
util.cbag res123 
zoom res123, buffer=4.0

select adjto123, br. all within 4 of resi 123
select ad, adjto123 and not resi 123
show sticks, ad
show sticks, ad
clip far, -20
util.cbak ad
disable adjto123
disable ad
select lab, adjto123 and name CA
disable lab
label lab,  ("%s, %s") % (resn, resi)
set label_color, white, lab
set label_font_id, 12
set_view (\
     0.624351680,    0.276539743,   -0.730553865,\
    -0.658855617,   -0.315983057,   -0.682688594,\
    -0.419632137,    0.907567084,   -0.015085885,\
     0.000000000,    0.000000000,  -36.639736176,\
    34.199573517,   26.189428329,   29.771860123,\
    28.887046814,   64.392425537,  -20.000000000 )

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
util.mrock 1,200,45
set ray_trace_frames=1
#mpng step05_
#mstop

##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
##part6 move to resi 122
#mset 1 x50
hide cartoon,resi 123 
hide sticks, adjto124
hide label, lab
color grey40,Toc_ah70_average_last5ns_out_min
#hide sticks ad

set_view (\
     0.624351680,    0.276539743,   -0.730553865,\
    -0.658855617,   -0.315983057,   -0.682688594,\
    -0.419632137,    0.907567084,   -0.015085885,\
     0.000000000,    0.000000000,  -36.639736176,\
    34.199573517,   26.189428329,   29.771860123,\
    28.887046814,   64.392425537,  -20.000000000 )

mview store
#frame 50

hide cartoon,resi 121 
hide sticks, adjto123
hide label, lab
color grey40,Toc_ah70_average_last5ns_out_min
hide cartoon , resi 120
hide cartoon ,resi 119

select res122, resi 122
disable res122
show sticks, res122
util.cbag res122 
zoom res122, buffer=4.0

select adjto122, br. all within 4 of resi 122
select ad, adjto122 and not resi 122
show sticks, ad
show sticks, ad
clip far, -20
util.cbak ad
disable adjto122
disable ad
select lab, adjto122 and name CA
disable lab
label lab,  ("%s, %s") % (resn, resi)
set label_color, white, lab
set label_font_id, 12
set_view (\
    0.987057388,    0.152267858,    0.050073966,\
    0.064969018,   -0.094405442,   -0.993403137,\
   -0.146531880,    0.983816266,   -0.103078172,\
   -0.000190269,   -0.000133723,  -40.756240845,\
   31.963613510,   25.423116684,   35.521156311,\
   32.930229187,   68.604621887,  -20.000000000 )

mview store
mview reinterpolate
#set ray_trace_frames=1
set ray_shadow,off
#mpng step06_
#mstop
#
#
##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
###movie part7 rock resi 122
#mset 1 x200
set cartoon_transparency, 0.6, Toc_ah70_average_last5ns_out_min
#util.mrock 1,200,45
set ray_trace_frames=1
#mpng step07_
#mstop

##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
##part8 move to resi 121
#mset 1 x50
hide cartoon,resi 122 
hide sticks, adjto123
hide label, lab
color grey40,Toc_ah70_average_last5ns_out_min
hide sticks ad

set_view (\
    0.987057388,    0.152267858,    0.050073966,\
    0.064969018,   -0.094405442,   -0.993403137,\
   -0.146531880,    0.983816266,   -0.103078172,\
   -0.000190269,   -0.000133723,  -40.756240845,\
   31.963613510,   25.423116684,   35.521156311,\
   32.930229187,   68.604621887,  -20.000000000 )
mview store
#frame 50

hide cartoon,resi 120 
hide sticks, adjto122
hide label, lab
color grey40,Toc_ah70_average_last5ns_out_min
#hide sticks ad

select res121, resi 121
disable res121
show sticks, res121
util.cbag res121 
zoom res121, buffer=4.0

select adjto121, br. all within 4 of resi 121
select ad, adjto121 and not resi 121
show sticks, ad
show sticks, ad
clip far, -20
util.cbak ad
disable adjto121
disable ad
select lab, adjto121 and name CA
disable lab
label lab,  ("%s, %s") % (resn, resi)
set label_color, white, lab
set label_font_id, 12

set_view (\
    0.759626985,    0.468300045,   -0.451268822,\
   -0.572822988,    0.153241202,   -0.805220544,\
   -0.307932585,    0.870166838,    0.384661973,\
    0.000000000,    0.000000000,  -37.847610474,\
   30.352443695,   29.871002197,   35.362777710,\
   29.430137634,   66.265090942,  -20.000000000 )
mview store
#mview reinterpolate
set ray_trace_frames=1
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
#mset 1 x50
hide cartoon,resi 121 
hide sticks, adjto122
hide label, lab
color grey40,Toc_ah70_average_last5ns_out_min
hide sticks ad
set_view (\
    0.759626985,    0.468300045,   -0.451268822,\
   -0.572822988,    0.153241202,   -0.805220544,\
   -0.307932585,    0.870166838,    0.384661973,\
    0.000000000,    0.000000000,  -37.847610474,\
   30.352443695,   29.871002197,   35.362777710,\
   29.430137634,   66.265090942,  -20.000000000 )
mview store
#frame 50

hide cartoon,resi 119 
hide sticks, adjto121
hide label, lab
color grey40,Toc_ah70_average_last5ns_out_min
hide cartoon, pep

select res120, resi 120
disable res120
show sticks, res120
util.cbag res120 
zoom res120, buffer=4.0

select adjto120, br. all within 4 of resi 120
select ad, adjto120 and not resi 120
show sticks, ad
show sticks, ad
clip far, -20
util.cbak ad
disable adjto120
disable ad
select lab, adjto120 and name CA
disable lab
label lab,  ("%s, %s") % (resn, resi)
set label_color, white, lab
set label_font_id, 12
set_view (\
    0.889868915,    0.456095874,   -0.009205373,\
   -0.113486268,    0.201791808,   -0.972824156,\
   -0.441844791,    0.866737962,    0.231331646,\
   -0.000038811,   -0.001129996,  -43.859264374,\
   33.514789581,   29.553997040,   38.248218536,\
   28.338453293,   79.392341614,  -20.000000000 )

mview store
mview reinterpolate
set ray_trace_frames=1
set ray_shadow,off
#mpng step10_
#mstop
#
##^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
###movie part11 rock resi 120
#mset 1 x200
set cartoon_transparency, 0.6, Toc_ah70_average_last5ns_out_min
util.mrock 1,200,45
set ray_trace_frames=1
#mpng step11_
#mstop
#

hide stick, resi 117-124
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
#part12 move to resi 119
#mset 1 x50
hide cartoon,resi 120 
hide sticks, adjto121
hide label, lab
color grey40,Toc_ah70_average_last5ns_out_min
hide sticks ad
set_view (\
    0.889868915,    0.456095874,   -0.009205373,\
   -0.113486268,    0.201791808,   -0.972824156,\
   -0.441844791,    0.866737962,    0.231331646,\
   -0.000038811,   -0.001129996,  -43.859264374,\
   33.514789581,   29.553997040,   38.248218536,\
   28.338453293,   79.392341614,  -20.000000000 )
mview store
#frame 50

hide cartoon,resi 118 
hide sticks, adjto120
hide label, lab
color grey40,Toc_ah70_average_last5ns_out_min
#hide sticks ad

select res119, resi 119
disable res119
show sticks, res119
util.cbag res119 
zoom res119, buffer=4.0

select adjto119, br. all within 4 of resi 119
select ad, adjto119 and not resi 119
show sticks, ad
show sticks, ad
clip far, -20
util.cbak ad
disable adjto119
disable ad
select lab, adjto119 and name CA
disable lab
label lab,  ("%s, %s") % (resn, resi)
set label_color, white, lab
set label_font_id, 12
set_view (\
    0.885726333,    0.432470262,    0.168619320,\
   -0.017166676,    0.393537968,   -0.919140637,\
   -0.463860691,    0.811219692,    0.355995327,\
    0.000000000,    0.000000000,  -43.386394501,\
   31.650001526,   25.725091934,   41.229820251,\
   33.773086548,   72.999710083,  -20.000000000 )
mview store
mview reinterpolate
set ray_trace_frames=1
set ray_shadow,off
#mpng step012_
#mstop

#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
##movie part13 rock resi 119
#mset 1 x200
set cartoon_transparency, 0.6, Toc_ah70_average_last5ns_out_min
util.mrock 1,200,45
set ray_trace_frames=1
set ray_shadow,off
#mpng step13_
#mstop


#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
#part13 move to resi 118
#mset 1 x50
hide cartoon,resi 119
hide sticks, adjto120
hide label, lab
color grey40,Toc_ah70_average_last5ns_out_min
hide sticks ad
set_view (\
    0.885726333,    0.432470262,    0.168619320,\
   -0.017166676,    0.393537968,   -0.919140637,\
   -0.463860691,    0.811219692,    0.355995327,\
    0.000000000,    0.000000000,  -43.386394501,\
   31.650001526,   25.725091934,   41.229820251,\
   33.773086548,   72.999710083,  -20.000000000 )
mview store
#frame 50

hide cartoon,resi 117
hide sticks, adjto119
hide label, lab
color grey40,Toc_ah70_average_last5ns_out_min
#hide sticks ad

select res118, resi 118
disable res118
show sticks, res118
util.cbag res118 
zoom res118, buffer=4.0

select adjto118, br. all within 4 of resi 118
select ad, adjto118 and not resi 118
show sticks, ad
show sticks, ad
clip far, -20
util.cbak ad
disable adjto118
disable ad
select lab, adjto118 and name CA
disable lab
label lab,  ("%s, %s") % (resn, resi)
set label_color, white, lab
set label_font_id, 12
set_view (\
    0.917346358,    0.365649611,    0.157301173,\
   -0.101485848,    0.596969426,   -0.795806587,\
   -0.384892374,    0.714075148,    0.584749103,\
   -0.000244431,   -0.001522615,  -52.216850281,\
   31.373386383,   39.328369141,   38.680965424,\
   35.066741943,   69.337547302,  -20.000000000 )
mview store
mview reinterpolate
set ray_trace_frames=1
set ray_shadow,off
#mpng step014_
#mstop

#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
##movie part15 rock resi 118
#mset 1 x200
set cartoon_transparency, 0.6, Toc_ah70_average_last5ns_out_min
util.mrock 1,200,45
set ray_trace_frames=1
#mpng step15_
#mstop

#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
#part13 move to resi 117
#mset 1 x50
hide cartoon,resi 118
hide sticks, adjto119
hide label, lab
color grey40,Toc_ah70_average_last5ns_out_min
hide sticks ad
set_view (\
    0.917346358,    0.365649611,    0.157301173,\
   -0.101485848,    0.596969426,   -0.795806587,\
   -0.384892374,    0.714075148,    0.584749103,\
   -0.000244431,   -0.001522615,  -52.216850281,\
   31.373386383,   39.328369141,   38.680965424,\
   35.066741943,   69.337547302,  -20.000000000 )
mview store
#frame 50


hide sticks, adjto118
hide label, lab
color grey40,Toc_ah70_average_last5ns_out_min
#hide sticks ad

select res117, resi 117
disable res117
show sticks, res117
util.cbag res117 
zoom res117, buffer=4.0

select adjto117, br. all within 4 of resi 117
select ad, adjto117 and not resi 117
show sticks, ad
show sticks, ad
clip far, -20
util.cbak ad
disable adjto117
disable ad
select lab, adjto117 and name CA
disable lab
label lab,  ("%s, %s") % (resn, resi)
set label_color, white, lab
set label_font_id, 12
set_view (\
    0.904761314,    0.372040063,    0.207265675,\
   -0.056336340,    0.586954892,   -0.807644606,\
   -0.422134608,    0.719058692,    0.552026391,\
   -0.000273475,   -0.001597073,  -34.212852478,\
   32.867233276,   32.644760132,   46.771793365,\
   26.957355499,   61.426952362,  -20.000000000 )


mview store
mview reinterpolate
set ray_trace_frames=1
set ray_shadow,off
#mpng step016_
#mstop
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
##movie part17 rock resi 117
#mset 1 x200
set cartoon_transparency, 0.6, Toc_ah70_average_last5ns_out_min
util.mrock 1,200,45
set ray_trace_frames=1
#mpng step17_
#mstop
#^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
mset 1 x50
hide sticks,resi 117-124

hide sticks, adjto117
hide label, lab
color grey40,Toc_ah70_average_last5ns_out_min
hide sticks ad
set cartoon_transparency, 0.0, Toc_ah70_average_last5ns_out_min
set ray_shadow,on
show stick,pep 
util.cbag pep

set_view (\
    0.904761314,    0.372040063,    0.207265675,\
   -0.056336340,    0.586954892,   -0.807644606,\
   -0.422134608,    0.719058692,    0.552026391,\
   -0.000273475,   -0.001597073,  -34.212852478,\
   32.867233276,   32.644760132,   46.771793365,\
   26.957355499,   61.426952362,  -20.000000000 )

mview store
frame 50

zoom Toc_ah70_average_last5ns_out_min, buffer=4.0 
clip far, -20

set_view (\
     0.748916388,    0.612756371,   -0.252296537,\
    -0.394108921,    0.105784282,   -0.912956178,\
    -0.532729506,    0.783160567,    0.320716828,\
     0.000000000,    0.000000000, -128.791824341,\
    35.063995361,   34.599014282,   33.414527893,\
   101.540458679,  156.043197632,  -20.000000000 )
### cut above here and paste into script ##
mview store
mview reinterpolate
set ray_trace_frames=1
mpng step18_
mstop
