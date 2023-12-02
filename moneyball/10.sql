SELECT count(p.first_name), p.last_name, s.salary, s.year, performances.HR FROM players p LEFT JOIN (SELECT player_id, year, salary FROM salaries GROUP BY player_id, year, salary) s ON p.id = s.player_id LEFT JOIN (SELECT player_id, year, HR FROM performances GROUP BY player_id, year, HR) perf ON p.id = perf.player_id AND s.year = perf.year ORDER BY p.id, perf.year DESC, perf.HR DESC, s.salary DESC;
