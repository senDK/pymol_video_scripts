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
mset 1 x200
set cartoon_transparency, 0.6, Toc_ah70_average_last5ns_out_min 
util.mrock 1,200,45
set ray_trace_frames=1
set ray_shadow, off
mpng step03_
mstop
