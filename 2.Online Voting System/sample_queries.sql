INSERT INTO Voters (Name, Email) VALUES ('Aaryan Mudvikar', 'aaryan@gmail.com');
INSERT INTO Candidates (Name, Party) VALUES ('John Doe', 'Party A');
INSERT INTO Votes (VoterID, CandidateID) VALUES (1, 1);
UPDATE Voters SET HasVoted=TRUE WHERE VoterID=1;

SELECT C.Name, C.Party, COUNT(V.VoteID) AS TotalVotes
FROM Candidates C LEFT JOIN Votes V ON C.CandidateID = V.CandidateID
GROUP BY C.CandidateID;
