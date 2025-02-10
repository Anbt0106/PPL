job(len,plastic_surgeon).
job(lance,heart_surgeon).
job(frank,brain_surgeon).
job(charlie,plastic_surgeon).
job(lisa,doctor).
address(joe,hanoi).
address(sam,hanoi).
address(bill,danang).
address(cindy,ninhbinh).
address(joan,tphcm).
address(len,hanoi).
address(lance,nhatrang).
address(frank,danang).
address(charlie,hanoi).
address(lisa,hanoi).
salary(joe,5).
salary(sam,15).
salary(bill,20).
salary(cindy,14).
salary(joan,8).
salary(len,4).
salary(lance,6.5).
salary(frank,8.5).
salary(charlie,12).
salary(lisa,19).


% Find people who live in Danang
live_in_danang(X) :-
    address(X, danang).

% Find people who are surgeons
surgeons(X) :-
    job(X, plastic_surgeon);
    job(X, heart_surgeon);
    job(X, brain_surgeon).

% Find all surgeons and live in Hanoi
surgeons_in_hanoi(X) :-
    surgeons(X),
    address(X, hanoi).

% Find all surgeons and live in Hanoi and make over 5
surgeons_in_hanoi_over_5(X) :-
    surgeons(X),
    address(X, hanoi),
    salary(X, S),
    S >= 5.


