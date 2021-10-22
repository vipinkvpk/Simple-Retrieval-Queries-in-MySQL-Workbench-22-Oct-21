select customerid, invoiceid, billingcountry from invoice 

select firstname, lastname, email
from customer

select lastname, company, city, state, country
from customer
where country in( 'USA', 'Canada', 'Denmark')

select * from invoice
where total >= 15


select Invoiceid, Total, Invoicedate
from invoice
where Invoicedate between '2010-07-01' and '2010-09-30'


select lastname, state
from customer
where state = 'CA'


select customerid, billingcountry, total
from invoice 
where billingcountry = 'France' or total > 5


select * from artist
order by name desc


select customerid, billingcountry, total
from invoice
where (billingcountry = 'France' and billingcountry = 'Ireland') and total > 5


select invoicedate, total
from invoice
order by total desc


select customerid, billingcountry, total
from invoice
where billingcountry in ('Norway', 'USA', 'Ireland') and total < 10
order by billingcountry, total desc


select * from invoiceline


select invoiceid, trackid, unitprice, quantity, (unitprice * quantity) as 'extended price'
from invoiceline
order by invoiceid


select customerid, total, (total * .9) as'Discounted Total'
from invoice
where invoicedate between '2013-12-01' and '2013-12-30'