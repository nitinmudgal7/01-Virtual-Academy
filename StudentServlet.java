package com.nitin.registration;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.nitin.registration.StudentDAO;
import com.nitin.registration.Student;
import com.nitin.registration.TeacherDAO;
import com.nitin.registration.Teacher;
import com.nitin.registration.SubjectDAO;
import com.nitin.registration.Subject;


@WebServlet("/")
public class StudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private StudentDAO StudentDAO;
	private TeacherDAO teacherDAO;
	private SubjectDAO SubjectDAO;
	public void init() {
		StudentDAO = new StudentDAO();
		teacherDAO = new TeacherDAO();
		SubjectDAO = new SubjectDAO();
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();

		try {
			switch (action) {
			case "/new1":
				showNewFormS(request, response);
				break;
			case "/insert1":
				insertStudent(request, response);
				break;
			case "/deleteS":
				deleteStudent(request, response);
				break;
			case "/editS":
				showEditFormS(request, response);
				break;
			case "/update1":
				updateStudent(request, response);
				break;
			case "/list1":
				listStudent(request, response);
				break;
				
				
				
			case "/new2":
				showNewFormSB(request, response);
				break;
			case "/insert2":
				insertSubject(request, response);
				break;
			case "/deleteSB":
				deleteSubject(request, response);
				break;
			case "/editSB":
				showEditFormSB(request, response);
				break;
			case "/update2":
				updateSubject(request, response);
				break;
			case "/list2":
				listSubject(request, response);
				break;
				
				
				case "/new":
					showNewFormT(request, response);
					break;
				case "/insert":
					insertTeacher(request, response);
					break;
				case "/delete":
					deleteTeacher(request, response);
					break;
				case "/edit":
					showEditFormT(request, response);
					break;
				case "/update":
					updateTeacher(request, response);
					break;
				default:
					listTeacher(request, response);
					break;
			}
		} catch (SQLException ex) {
			throw new ServletException(ex);
		}
	}
	/** to handle Student operations**/
	private void listStudent(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		List<Student> listStudent = StudentDAO.selectAllStudents();
		request.setAttribute("listStudent", listStudent);
		RequestDispatcher dispatcher = request.getRequestDispatcher("student-list.jsp");
		dispatcher.forward(request, response);
	}

	private void showNewFormS(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("student-form.jsp");
		dispatcher.forward(request, response);
	}

	private void showEditFormS(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		Student existingStudent = StudentDAO.selectStudent(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("student-form.jsp");
		request.setAttribute("student", existingStudent);
		dispatcher.forward(request, response);

	}

	private void insertStudent(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		String first_name = request.getParameter("first_name");
		String last_name = request.getParameter("last_name");
		String age = request.getParameter("age");
		Student newStudent = new Student(first_name, last_name, age);
		StudentDAO.insertStudent(newStudent);
		response.sendRedirect("list1");
	}

	private void updateStudent(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String first_name = request.getParameter("first_name");
		String last_name = request.getParameter("last_name");
		String age = request.getParameter("age");

		Student book = new Student(id, first_name, last_name, age);
		StudentDAO.updateStudent(book);
		response.sendRedirect("list1");
	}

	private void deleteStudent(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		StudentDAO.deleteStudent(id);
		response.sendRedirect("list1");

	}
	
/** to handle Subject operations**/
	
	private void listSubject(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		List<Subject> listSubject = SubjectDAO.selectAllSubjects();
		request.setAttribute("listSubject", listSubject);
		RequestDispatcher dispatcher = request.getRequestDispatcher("subject-list.jsp");
		dispatcher.forward(request, response);
	}

	private void showNewFormSB(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("subject-form.jsp");
		dispatcher.forward(request, response);
	}

	private void showEditFormSB(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		Subject existingSubject = SubjectDAO.selectSubject(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("subject-form.jsp");
		request.setAttribute("subject", existingSubject);
		dispatcher.forward(request, response);

	}

	private void insertSubject(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		String name = request.getParameter("name");
		String code = request.getParameter("code");
		Subject newSubject = new Subject(name, code);
		SubjectDAO.insertSubject(newSubject);
		response.sendRedirect("list2");
	}

	private void updateSubject(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		String code = request.getParameter("code");
		Subject book = new Subject(id, name, code);
		SubjectDAO.updateSubject(book);
		response.sendRedirect("list2");
	}

	private void deleteSubject(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		SubjectDAO.deleteSubject(id);
		response.sendRedirect("list2");

	}
	

	/** to handle Teacher operations**/
	
	private void listTeacher(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, IOException, ServletException {
		List<Teacher> listTeacher = teacherDAO.selectAllTeachers();
		request.setAttribute("listTeacher", listTeacher);
		RequestDispatcher dispatcher = request.getRequestDispatcher("teacher-list.jsp");
		dispatcher.forward(request, response);
	}

	private void showNewFormT(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("teacher-form.jsp");
		dispatcher.forward(request, response);
	}

	private void showEditFormT(HttpServletRequest request, HttpServletResponse response)
			throws SQLException, ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		Teacher existingUser = teacherDAO.selectTeacher(id);
		RequestDispatcher dispatcher = request.getRequestDispatcher("teacher-form.jsp");
		request.setAttribute("teacher", existingUser);
		dispatcher.forward(request, response);

	}

	private void insertTeacher(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		String first_name = request.getParameter("first_name");
		String last_name = request.getParameter("last_name");
		String age = request.getParameter("age");
		Teacher newTeacher = new Teacher(first_name, last_name, age);
		teacherDAO.insertTeacher(newTeacher);
		response.sendRedirect("list");
	}

	private void updateTeacher(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String first_name = request.getParameter("first_name");
		String last_name = request.getParameter("last_name");
		String age = request.getParameter("age");

		Teacher book = new Teacher(id, first_name, last_name, age);
		teacherDAO.updateTeacher(book);
		response.sendRedirect("list");
	}

	private void deleteTeacher(HttpServletRequest request, HttpServletResponse response) 
			throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		teacherDAO.deleteTeacher(id);
		response.sendRedirect("list");

	}

}