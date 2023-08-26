%eviews_path="C:\Users\SMATI\Google Drive\GITHUB\Repos\sagirumati\UROOT PACKAGE\UROOT"
cd %eviews_path
%eviewsr_text="32683ce885f"
%wf="C:\Users\SMATI\AppData\Local\Temp\Rtmpe6JuxD\uroot16cc43702864.wf1"
%page=""
%table="adf_table"
%range=""
open {%wf}

  if %page<>"" then
  pageselect {%page}
  endif

  if %range<>"" then
  %range=",r="+%range
  endif

  {%table}.save(t=csv{%range}) {%table}_{%eviewsr_text}
exit
