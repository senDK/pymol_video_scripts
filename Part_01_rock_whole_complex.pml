load Toc_ah70_average_last5ns_out_min.pdb
show cartoon   ,Toc_ah70_average_last5ns_out_min
hide sticks    ,Toc_ah70_average_last5ns_out_min
hide lines     ,Toc_ah70_average_last5ns_out_min
#set('seq_view',1)
color grey40,Toc_ah70_average_last5ns_out_min
### cut below here and paste into script ###
set_view (\
     0.924469113,   -0.316915274,    0.211975127,\
    -0.224180117,   -0.002104877,    0.974553645,\
    -0.308402300,   -0.948453248,   -0.072990991,\
     0.000000000,    0.000000000, -128.791824341,\
    26.142215729,   31.603685379,   38.217109680,\
   101.540451050,  156.043197632,    0.000000000 )
### cut above here and paste into script ###
select pep, resi 117-124
disable pep
show sticks,pep
hide cartoon,pep
util.cbag pep
##movie part1
mset 1 x250
util.mrock 1,250,45
set ray_trace_frames=1
mpng step01_
mstop
