SELECT c.Name
FROM Candidate AS c
JOIN Vote AS v
  ON v.CandidateId = c.id
GROUP BY v.CandidateId
ORDER BY COUNT(v.CandidateId) DESC
LIMIT 1;
