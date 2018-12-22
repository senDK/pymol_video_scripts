load Toc_ah70_average_last5ns_out_min.pdb
show cartoon   ,Toc_ah70_average_last5ns_out_min
hide sticks    ,Toc_ah70_average_last5ns_out_min
hide lines     ,Toc_ah70_average_last5ns_out_min
#set('seq_view',1)
color grey40,Toc_ah70_average_last5ns_out_min
set_view (\
     0.924469113,   -0.316915274,    0.211975127,\
    -0.224180117,   -0.002104877,    0.974553645,\
    -0.308402300,   -0.948453248,   -0.072990991,\
     0.000000000,    0.000000000, -128.791824341,\
    26.142215729,   31.603685379,   38.217109680,\
   101.540451050,  156.043197632,    0.000000000 )

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
mset 1 x100
mview store
frame 100

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
set ray_trace_frames=1
mpng step02_
mstop
