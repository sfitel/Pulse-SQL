select *
INTO #table01
from History.dbo.AuditLog_H 
where System_Date = '2014-10-28'
and AudLogActionName = 'OrderTotalChange'

select *
--INTO #table01
from History.dbo.AuditLog_H 
where System_Date = '2014-10-28'
and AudLogActionName = 'OrderTotalChange'

select * from History.dbo.AuditLog_H
where AudLogReference IN (
  select AudLogReference from #table01
) and System_Date = '2014-10-28'
order by AudLogTimestamp, AudLogReference

