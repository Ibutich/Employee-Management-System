package dao;

import java.sql.*;
import java.util.*;
import java.util.Date;

import dbc.*;
import model.*;

public class ManagerDao {
	// manager dao class
	public static boolean isManagerOrNot(String email) {
		// decide whether the current employee is manager
		Connection conn = DBconn.getConn();
		boolean result = false;
		try {
			PreparedStatement ps = conn.prepareStatement("select ismanager from employee where email=?");
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			if (rs.next()) {
				if(rs.getInt("ismanager") == 1)
					result = true;
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBconn.close(conn);
		}
		return result;
	}
	
	public static ArrayList<Employee> getReportList(Employee manager) {
		// get list of manager's employee
		Connection conn = DBconn.getConn();
		ArrayList<Employee> result = new ArrayList<Employee>();
		int managerID = manager.getEid();
		try {
			PreparedStatement ps = conn.prepareStatement("select * from employee where manager=?");
			ps.setInt(1, managerID);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Employee emp = new Employee();
				emp.setEid(rs.getInt("eid"));
				emp.setAddress(rs.getString("address"));
				emp.setEmail(rs.getString("email"));
				emp.seteName(rs.getString("eName"));
				emp.setImgPath(rs.getString("imgpath"));
				emp.setIsManager(rs.getInt("ismanager"));
				emp.setJoinDate(rs.getDate("joindate"));
				emp.setManager(rs.getInt("manager"));
				emp.setPassword(rs.getString("password"));
				emp.setPhoneNum(rs.getString("phonenum"));
				emp.setSalary(rs.getDouble("salary"));
				result.add(emp);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBconn.close(conn);
		}
		return result;
	}
	
	public static ArrayList<Employee> newJoinedEmployees() {
		// get list of newly joined employees
		Connection conn = DBconn.getConn();
		ArrayList<Employee> result = new ArrayList<Employee>();
		try {
			Calendar cal = Calendar.getInstance();
			cal.add(Calendar.DATE, -1); // join in today, will be newly joined
			Date valve = cal.getTime();
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery("select * from employee");
			while (rs.next()) {
				if(rs.getDate("joindate").after(valve)) {
					Employee emp = new Employee();
					emp.setEid(rs.getInt("eid"));
					emp.setAddress(rs.getString("address"));
					emp.setEmail(rs.getString("email"));
					emp.seteName(rs.getString("eName"));
					emp.setImgPath(rs.getString("imgpath"));
					emp.setIsManager(rs.getInt("ismanager"));
					emp.setJoinDate(rs.getDate("joindate"));
					emp.setManager(rs.getInt("manager"));
					emp.setPassword(rs.getString("password"));
					emp.setPhoneNum(rs.getString("phonenum"));
					emp.setSalary(rs.getDouble("salary"));
					result.add(emp);
				}
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBconn.close(conn);
		}
		return result;
	}
	
	public static ArrayList<Employee> dptMembers(int did) {
		// get a list of employees belong to specific department 
		Connection conn = DBconn.getConn();
		ArrayList<Employee> result = new ArrayList<Employee>();
		try {
			PreparedStatement ps = conn.prepareStatement("select * from employee where eid in (select eid from empdpt where did = ?)");
			ps.setInt(1, did);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Employee emp = new Employee();
				emp.setEid(rs.getInt("eid"));
				emp.setAddress(rs.getString("address"));
				emp.setEmail(rs.getString("email"));
				emp.seteName(rs.getString("eName"));
				emp.setImgPath(rs.getString("imgpath"));
				emp.setIsManager(rs.getInt("ismanager"));
				emp.setJoinDate(rs.getDate("joindate"));
				emp.setManager(rs.getInt("manager"));
				emp.setPassword(rs.getString("password"));
				emp.setPhoneNum(rs.getString("phonenum"));
				emp.setSalary(rs.getDouble("salary"));
				result.add(emp);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBconn.close(conn);
		}
		return result;
	}
	
	public static Department dptWithLeastEmp() {
		// get department which has least employee
		Connection conn = DBconn.getConn();
		Department result = new Department();
		try {
			Statement st = conn.createStatement();
			String sql = "select * from department where did = "
					+ "(select did from (select count(eid) as cteid, did from empdpt group by did) "
					+ "where cteid = (select min(count(eid)) from empdpt group by did))";
			ResultSet rs = st.executeQuery(sql);
			if (rs.next()) {
				result.setdName(rs.getString("dname"));
				result.setDid(rs.getInt("did"));
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBconn.close(conn);
		}
		return result;
	}
	
	public static Employee mngWithMostRpt() {
		// get manage who has the highest employees
		Connection conn = DBconn.getConn();
		Employee result = new Employee();
		try {
			Statement st = conn.createStatement();
			String sql = "select * from employee where eid = "
					+ "(select manager from "
					+ "(select count(eid) as ct, manager from employee group by manager) "
					+ "where ct = (select max(count(eid)) from employee group by manager))";
			ResultSet rs = st.executeQuery(sql);
			if (rs.next()) {
				result.setEid(rs.getInt("eid"));
				result.setAddress(rs.getString("address"));
				result.setEmail(rs.getString("email"));
				result.seteName(rs.getString("eName"));
				result.setImgPath(rs.getString("imgpath"));
				result.setIsManager(rs.getInt("ismanager"));
				result.setJoinDate(rs.getDate("joindate"));
				result.setManager(rs.getInt("manager"));
				result.setPassword(rs.getString("password"));
				result.setPhoneNum(rs.getString("phonenum"));
				result.setSalary(rs.getDouble("salary"));
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBconn.close(conn);
		}
		return result;
	}
	
	public static ArrayList<Employee> multiBelongEmp() {
		// get list of employees who belongs to multiple departments
		Connection conn = DBconn.getConn();
		ArrayList<Employee> result = new ArrayList<Employee>();
		try {
			Statement st = conn.createStatement();
			String sql = "select * from employee where eid in "
					+ "(select eid from "
					+ "(select count(did), eid from empdpt group by eid having count(eid)>1))";
			ResultSet rs = st.executeQuery(sql);
			while (rs.next()) {
				Employee emp = new Employee();
				emp.setEid(rs.getInt("eid"));
				emp.setAddress(rs.getString("address"));
				emp.setEmail(rs.getString("email"));
				emp.seteName(rs.getString("eName"));
				emp.setImgPath(rs.getString("imgpath"));
				emp.setIsManager(rs.getInt("ismanager"));
				emp.setJoinDate(rs.getDate("joindate"));
				emp.setManager(rs.getInt("manager"));
				emp.setPassword(rs.getString("password"));
				emp.setPhoneNum(rs.getString("phonenum"));
				emp.setSalary(rs.getDouble("salary"));
				result.add(emp);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBconn.close(conn);
		}
		return result;
	}
	
	public static ArrayList<Employee> empWithSameSalary(int eid) {
		// get list of employees who belongs to multiple departments
		Connection conn = DBconn.getConn();
		ArrayList<Employee> result = new ArrayList<Employee>();
		try {
			String sql = "select * from employee where salary = "
					+ "(select salary from employee where eid = ?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, eid);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Employee emp = new Employee();
				emp.setEid(rs.getInt("eid"));
				emp.setAddress(rs.getString("address"));
				emp.setEmail(rs.getString("email"));
				emp.seteName(rs.getString("eName"));
				emp.setImgPath(rs.getString("imgpath"));
				emp.setIsManager(rs.getInt("ismanager"));
				emp.setJoinDate(rs.getDate("joindate"));
				emp.setManager(rs.getInt("manager"));
				emp.setPassword(rs.getString("password"));
				emp.setPhoneNum(rs.getString("phonenum"));
				emp.setSalary(rs.getDouble("salary"));
				result.add(emp);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBconn.close(conn);
		}
		return result;
	}
}
