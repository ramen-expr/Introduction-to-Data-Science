# Students names
students.names <- c("A", "B", "C", "D", "E")
# chemistry marks
student.marks.chemistry <- c(65, 59, 80, 91, 70)
# biology marks
student.marks.biology <- c(73, 55, 61, 48, 80)

# sum up the marks for all of the students
students.marks.combined <- student.marks.chemistry + student.marks.biology

# which one got the highest mark?
student_id <- which.max(students.marks.combined)

# print name of the student with the highest mark
print(students.names[student_id])