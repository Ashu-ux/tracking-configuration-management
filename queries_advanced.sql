-- SLA violation tracking
SELECT issue_id, client_id
FROM issues
WHERE status != 'Resolved'
AND DATEDIFF(CURDATE(), created_date) > sla_days;
