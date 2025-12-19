INSERT INTO Books (Title, Author, Publisher, Year, Copies) VALUES ('Database Systems', 'Korth', 'McGraw-Hill', 2020, 5);
INSERT INTO Members (Name, Email, Phone) VALUES ('Aaryan Mudvikar', 'aaryan@gmail.com', '9876543210');
INSERT INTO BorrowedBooks (MemberID, BookID, BorrowDate) VALUES (1, 1, CURDATE());

SELECT B.Title, M.Name, BB.BorrowDate, BB.ReturnDate
FROM BorrowedBooks BB
JOIN Books B ON BB.BookID = B.BookID
JOIN Members M ON BB.MemberID = M.MemberID;
