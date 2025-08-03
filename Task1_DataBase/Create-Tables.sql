--Estanterías
CREATE TABLE Shelf (
    id INT PRIMARY KEY AUTO_INCREMENT,
    location VARCHAR(100) NOT NULL,
    topic VARCHAR(100),
    material VARCHAR(50),
    capacity INT CHECK (capacity >= 0)
);

--Libros
CREATE TABLE Book (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(200) NOT NULL,
    author VARCHAR(100),
    year INT,
    is_available BOOLEAN DEFAULT TRUE,
    shelf_id INT,
    FOREIGN KEY (shelf_id) REFERENCES Shelf(id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

--Estudiantes
CREATE TABLE Student (
    id INT PRIMARY KEY AUTO_INCREMENT,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    program VARCHAR(100),
    student_code VARCHAR(20) UNIQUE NOT NULL
);

--Préstamos
CREATE TABLE Loan (
    id INT PRIMARY KEY AUTO_INCREMENT,
    book_id INT NOT NULL,
    student_id INT NOT NULL,
    loan_date DATE NOT NULL,
    expected_return DATE NOT NULL,
    returned_on DATE,
    FOREIGN KEY (book_id) REFERENCES Book(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (student_id) REFERENCES Student(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
