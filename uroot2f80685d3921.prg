%eviews_path="C:\Users\SMATI\Google Drive\GITHUB\Repos\sagirumati\UROOT PACKAGE\UROOT"
cd %eviews_path
%series="x,y"
%test="adf pp"
%wf=".\uroot2f8071831dd.wf1"
%info="sic"
	logmode +addin
wfopen {%wf}
%series=@wlookup(%series,"series")

group unit_root_test_group
unit_root_test_group.add {%series}
!vnum=unit_root_test_group.@count

for !k=1 to {!vnum}
%x{!k}=unit_root_test_group.@seriesname({!k})
%x{!k}=%x{!k}
next


'UNIT ROOT TEST
for %test_type   {%test} 'NAME of test capitalised for the sake of STRING

for !j=1 to !vnum
for %k {%x{!j}}
'spool line_graphs
'freeze(mode=overwrite,graph_of_{%k}) {%k}.line
'line_graphs.add(mode=overwrite) graph_of_{%k}
freeze(mode=overwrite,{%test_type}_{%k}_trend) {%k}.uroot({%test_type},trend,maxlag=4,info={%info})
freeze(mode=overwrite,{%test_type}_{%k}_const) {%k}.uroot({%test_type},const,maxlag=4,info={%info})
freeze(mode=overwrite,{%test_type}_{%k}_none) {%k}.uroot({%test_type},n,maxlag=4,info={%info})

'FIRST DIFFERENCE

freeze(mode=overwrite,{%test_type}_{%k}_trend_d1) {%k}.uroot({%test_type},trend,dif=1,maxlag=4,info={%info})
freeze(mode=overwrite,{%test_type}_{%k}_const_d1) {%k}.uroot({%test_type},const,dif=1,maxlag=4,info={%info})
freeze(mode=overwrite,{%test_type}_{%k}_none_d1) {%k}.uroot({%test_type},n,dif=1,maxlag=4,info={%info})
next
next

for !j=1 to  !vnum
table {%x{!j}}_{%test_type}
table {%x{!j}}_{%test_type}_d1
next
for !j=1 to  !vnum
for %k {%x{!j}}
{%k}_{%test_type}(6,3)=%test_type+" AT LEVEL"
{%k}_{%test_type}(7,1)="Variable"
{%k}_{%test_type}(7,2)="Deterministic Trend"
{%k}_{%test_type}(7,3)="Test Value"
{%k}_{%test_type}(7,4)="5% Critical Value"
{%k}_{%test_type}(7,5)="Prob"
{%k}_{%test_type}(7,6)="Decision"

'FILL IN THE VALUES

'FOR CONSTANT
{%k}_{%test_type}(8,1)=%k
{%k}_{%test_type}(8,2)="C"
{%k}_{%test_type}(8,3)={%test_type}_{%k}_const(7,4)
{%k}_{%test_type}(8,4)={%test_type}_{%k}_const(9,4)
{%k}_{%test_type}(8,5)={%test_type}_{%k}_const(7,5)


'FOR CONSTANT AND TREND
{%k}_{%test_type}(9,1)=%k
{%k}_{%test_type}(9,2)="C&T"
{%k}_{%test_type}(9,3)={%test_type}_{%k}_trend(7,4)
{%k}_{%test_type}(9,4)={%test_type}_{%k}_trend(9,4)
{%k}_{%test_type}(9,5)={%test_type}_{%k}_trend(7,5)


'FOR NONE
{%k}_{%test_type}(10,1)=%k
{%k}_{%test_type}(10,2)="N"
{%k}_{%test_type}(10,3)={%test_type}_{%k}_none(7,4)
{%k}_{%test_type}(10,4)={%test_type}_{%k}_none(9,4)
{%k}_{%test_type}(10,5)={%test_type}_{%k}_none(7,5)
next
next
for !j=1 to  !vnum
for %k {%x{!j}}
{%k}_{%test_type}_d1(6,3)=%test_type+" AT FIRST DIFFERENCE"
{%k}_{%test_type}_d1(7,1)="Variable"
{%k}_{%test_type}_d1(7,2)="Deterministic Trend"
{%k}_{%test_type}_d1(7,3)="Test Value"
{%k}_{%test_type}_d1(7,4)="5% Critical Value"
{%k}_{%test_type}_d1(7,5)="Prob"
{%k}_{%test_type}_d1(7,6)="Decision"

'FOR CONSTANT
{%k}_{%test_type}_d1(8,1)=%k
{%k}_{%test_type}_d1(8,2)="C"
{%k}_{%test_type}_d1(8,3)={%test_type}_{%k}_const_d1(7,4)
{%k}_{%test_type}_d1(8,4)={%test_type}_{%k}_const_d1(9,4)
{%k}_{%test_type}_d1(8,5)={%test_type}_{%k}_const_d1(7,5)


'FOR CONSTANT AND TREND
{%k}_{%test_type}_d1(9,1)=%k
{%k}_{%test_type}_d1(9,2)="C&T"
{%k}_{%test_type}_d1(9,3)={%test_type}_{%k}_trend_d1(7,4)
{%k}_{%test_type}_d1(9,4)={%test_type}_{%k}_trend_d1(9,4)
{%k}_{%test_type}_d1(9,5)={%test_type}_{%k}_trend_d1(7,5)

'FOR NONE
{%k}_{%test_type}_d1(10,1)=%k
{%k}_{%test_type}_d1(10,2)="N"
{%k}_{%test_type}_d1(10,3)={%test_type}_{%k}_none_d1(7,4)
{%k}_{%test_type}_d1(10,4)={%test_type}_{%k}_none_d1(9,4)
{%k}_{%test_type}_d1(10,5)={%test_type}_{%k}_none_d1(7,5)


'CREATE TABLE FOR REPORTING THE UNIT ROOT RESULTS

'ADF AND PP TEST

table {%test_type}_table
'{%test_type}_table(1,1)="Country"
{%test_type}_table(1,2)="Variables"
{%test_type}_table(1,3)="None"
{%test_type}_table(1,4)="Constant"
{%test_type}_table(1,5)="Constant and trend"
{%test_type}_table(1,6)="None"
{%test_type}_table(1,7)="Constant"
{%test_type}_table(1,8)="Constant and trend"
{%test_type}_table(1,9)="Decision"



'{%test_type}_table(2,1)=%country{!p}
{%test_type}_table(!j+1,2)=%x{!j}
{%test_type}_table(!j+1,2)=%x{!j}
{%test_type}_table(!j+1,3)=@str({%test_type}_{%x{!j}}_none(7,4),"f.3")
{%test_type}_table(!j+1,4)=@str({%test_type}_{%x{!j}}_const(7,4),"f.3")
{%test_type}_table(!j+1,5)=@str({%test_type}_{%x{!j}}_trend(7,4),"f.3")

{%test_type}_table(!j+1,6)=@str({%test_type}_{%x{!j}}_none_d1(7,4),"f.3")+"***"
{%test_type}_table(!j+1,7)=@str({%test_type}_{%x{!j}}_const_d1(7,4),"f.3")+"***"
{%test_type}_table(!j+1,8)=@str({%test_type}_{%x{!j}}_trend_d1(7,4),"f.3")+"***"
next
next

for !j=1 to  !vnum
for %k {%x{!j}}_{%test_type}
for %p {%x{!j}}_{%test_type}_d1
 !n=5
for !m=8 to 10

if {%k}(!m,!n)<0.05 then
{%k}(!m,!n+1)="I(0)"
else
{%k}(!m,!n+1)="I(1)"
if {%p}(!m,!n)<0.05 then
{%p}(!m,!n+1)="I(1)"
else
{%p}(!m,!n+1)="I(2)"
endif
endif
{%test_type}_table(!j+1,9)={%p}(8,6)
next
next
next
next
for !j=1 to !vnum
for %k {%x{!j}}_{%test_type} {%x{!j}}_{%test_type}_d1
spool unitroot_results
unitroot_results.add(mode=overwrite,loc={!j},name={%k}) {%k}
''unitroot.append(mode=overwrite,loc={!j},name={%z}) {%z}
next
next


'DELETE THE UNNECESSARY TABLES
FOR !j=1 to !vnum
for %k {%x{!j}}
%tables=@wlookup("*const*,*none*,*trend*","table")
delete {%x{!j}}_*
delete {%tables}
'delete {%test_type}*
next
next
next

wfsave {%wf}
exit

