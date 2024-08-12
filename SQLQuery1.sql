insert into Curators (Name, Surname) values ('Amber', 'Layburn');
insert into Curators (Name, Surname) values ('Gilli', 'Ranner');
insert into Curators (Name, Surname) values ('Cathie', 'Willett');
insert into Curators (Name, Surname) values ('Fredia', 'Slight');
insert into Curators (Name, Surname) values ('Mariska', 'De Paepe');
insert into Curators (Name, Surname) values ('Alys', 'Learoyd');
insert into Curators (Name, Surname) values ('Konstance', 'Clunie');
insert into Curators (Name, Surname) values ('Niall', 'Skill');
insert into Curators (Name, Surname) values ('Hedy', 'Shitliff');
insert into Curators (Name, Surname) values ('Colman', 'Gathercole');

use MyAcademy




insert into Faculties (Name, Financing) values ('Gibson, Strosin and Cruickshank', '$1110.33');
insert into Faculties (Name, Financing) values ('Kunze, VonRueden and Deckow', '$2472.66');
insert into Faculties (Name, Financing) values ('Keeling-Schultz', '$2673.15');
insert into Faculties (Name, Financing) values ('Muller, Kuhlman and Langworth', '$1498.70');
insert into Faculties (Name, Financing) values ('Goldner-Hammes', '$1169.85');
insert into Faculties (Name, Financing) values ('Hoppe-Torp', '$1021.82');
insert into Faculties (Name, Financing) values ('King, Johns and Bayer', '$1210.58');
insert into Faculties (Name, Financing) values ('Nikolaus-Leffler', '$1583.31');
insert into Faculties (Name, Financing) values ('Grady, Tromp and Nikolaus', '$953.51');
insert into Faculties (Name, Financing) values ('Schamberger LLC', '$2103.85');


insert into Departments (Name, Financing, FacultyId) values ('Clothing', '$2161.91', 1);
insert into Departments (Name, Financing, FacultyId) values ('Outdoors', '$2607.80', 5);
insert into Departments (Name, Financing, FacultyId) values ('Automotive', '$2613.98', 1);
insert into Departments (Name, Financing, FacultyId) values ('Grocery', '$1275.79', 2);
insert into Departments (Name, Financing, FacultyId) values ('Garden', '$2982.70', 5);
insert into Departments (Name, Financing, FacultyId) values ('Games', '$587.53', 5);


insert into Subjects (Name) values ('Ceciley');
insert into Subjects (Name) values ('Nell');
insert into Subjects (Name) values ('Guido');
insert into Subjects (Name) values ('Katha');
insert into Subjects (Name) values ('Alia');
insert into Subjects (Name) values ('Mordecai');
insert into Subjects (Name) values ('Pat');
insert into Subjects (Name) values ('Ricoriki');
insert into Subjects (Name) values ('Asia');
insert into Subjects (Name) values ('Armando');
insert into Subjects (Name) values ('Mallorie');
insert into Subjects (Name) values ('Susannah');
insert into Subjects (Name) values ('Maritsa');
insert into Subjects (Name) values ('Hadrian');
insert into Subjects (Name) values ('Cosimo');
insert into Subjects (Name) values ('Joel');
insert into Subjects (Name) values ('Templeton');
insert into Subjects (Name) values ('Iolande');
insert into Subjects (Name) values ('Blake');
insert into Subjects (Name) values ('Glennie');


insert into Teachers (Name, Salary, Surname) values ('Bree', '$980.57', 'Cockroft');
insert into Teachers (Name, Salary, Surname) values ('Olympe', '$434.36', 'Fritchly');
insert into Teachers (Name, Salary, Surname) values ('Rem', '$689.24', 'Brignell');
insert into Teachers (Name, Salary, Surname) values ('Sonnie', '$664.57', 'Colpus');
insert into Teachers (Name, Salary, Surname) values ('Zacharie', '$740.21', 'Massenhove');
insert into Teachers (Name, Salary, Surname) values ('Nicky', '$469.36', 'Chapman');
insert into Teachers (Name, Salary, Surname) values ('Shelba', '$927.21', 'Prinne');
insert into Teachers (Name, Salary, Surname) values ('Corabella', '$903.22', 'Shegog');
insert into Teachers (Name, Salary, Surname) values ('Janis', '$864.64', 'Heddan');
insert into Teachers (Name, Salary, Surname) values ('Meredeth', '$764.37', 'Rove');


insert into Groups (Name, Year, DepartmentId) values ('flickr.com', 2, 17);
insert into Groups (Name, Year, DepartmentId) values ('time.com', 3, 18);
insert into Groups (Name, Year, DepartmentId) values ('samsung.com', 5, 19);
insert into Groups (Name, Year, DepartmentId) values ('intel.com', 4, 20);
insert into Groups (Name, Year, DepartmentId) values ('ted.com', 5, 21);
insert into Groups (Name, Year, DepartmentId) values ('webnode.com', 4, 22);
insert into Groups (Name, Year, DepartmentId) values('P107',3,24);


insert into GroupsCurators(CuratorId, GroupId) values (6,21);

insert into Lectures(LectureRoom,SubjectId,TeacherId) values ('philosophy', 6,2);
insert into Lectures(LectureRoom,SubjectId,TeacherId) values ('mathematics', 15,3);
insert into Lectures(LectureRoom,SubjectId,TeacherId) values ('architecture', 11,5);
insert into Lectures(LectureRoom,SubjectId,TeacherId) values ('literature', 4,7);
insert into Lectures(LectureRoom,SubjectId,TeacherId) values ('astronomia',20,8);

insert into GroupsLectures(GroupId,LectureId) values (20,3)
insert into GroupsLectures(GroupId,LectureId) values (22,1)

--1Вивести всі можливі пари рядків викладачів та груп
Select * From Groups,Teachers 
--2. Вивести назви факультетів, фонд фінансування кафедр яких перевищує фонд фінансування факультету.

Select Departments.Name from Departments
join Faculties on Departments.FacultyId = Faculties.Id
where Departments.Financing > Faculties.Financing

--3. Вивести прізвища кураторів груп та назви груп, які вони курирують.

Select c.Surname as CuratorName,
		g.name as groupname
from Curators c join GroupsCurators gc on c.Id = gc.CuratorId
join Groups g on gc.GroupId = g.Id

--4. Вивести імена та прізвища викладачів, які читають лекції у групі “P107”.

select t.Name as TeachersName,
	   t.Surname as SurName
	   from Teachers t 
	   join Lectures l on t.Id = l.TeacherId 
	   join GroupsLectures gl on  l.Id = gl.LectureId
	   join Groups g on gl.GroupId = g.Id
	   Where g.Name = 'P107'
	   order by t.Surname, t.Name

	
--5. Вивести прізвища викладачів та назви факультетів, на яких вони читають лекції.

select t.Surname as TeachersSurname,
	   f.Name as FacultyName
	   from Lectures l
	    JOIN Teachers t on l.TeacherId = t.Id
	    JOIN Subjects s ON l.SubjectId = s.Id
		JOIN Departments d ON s.Id = d.Id
		JOIN Faculties f ON d.FacultyId = f.Id
group by t.Surname, f.Name
order by t.Surname, f.Name;


--6. Вивести назви кафедр та назви груп, які до них належать.

select t.Name as DepartmentName,
	   s.Name as GroupName
	   From Departments t
	   join Groups s on t.Id = s.DepartmentId
	   order by t.Name, s.Name
		




	   