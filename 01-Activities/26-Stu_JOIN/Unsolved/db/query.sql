-- Add your code below and execute file in MySQL Shell --
SELECT * 
FROM favorite_books
join book_prices on favorite_books.book_price = book_prices.price;