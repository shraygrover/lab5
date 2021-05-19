DROP VIEW h;
SELECT sname,COUNT(*) FROM suppliers,catalog,parts WHERE parts.pid = catalog.pid AND catalog.sid = suppliers.sid GROUP BY suppliers.sname, suppliers.sid;
SELECT sname,COUNT(*) FROM suppliers,catalog,parts WHERE parts.pid = catalog.pid AND catalog.sid = suppliers.sid GROUP BY suppliers.sname, suppliers.sid HAVING COUNT(*) >= 3; SELECT sname,COUNT(*) FROM suppliers,catalog,parts WHERE parts.pid = catalog.pid AND catalog.sid = suppliers.sid GROUP BY suppliers.sname, suppliers.sid HAVING EVERY(parts.color = 'Green'); 
 create view h as 
SELECT catalog.sid from catalog,parts WHERE catalog.pid = parts.pid AND parts.color = 'Green' INTERSECT SELECT catalog.sid from catalog,parts WHERE catalog.pid = parts.pid AND parts.color = 'Red' ;
SELECT sname, MAX(cost) from h, catalog, suppliers where h.sid = catalog.sid and catalog.sid = suppliers.sid GROUP BY sname,suppliers.sid;
