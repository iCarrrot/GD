//4
MATCH (t:Tweet) where t.created_str <> ''
RETURN apoc.date.fields(t.created_str).years as year,  apoc.date.fields(t.created_str).months as month, count(*)
order by year, month desc