package com.lab.dao;

import com.lab.bean.Sessionbean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class SessionDAO {

    private static final String DB_URL = "jdbc:mysql://localhost:3306/drivesmart_db";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "";

    public Connection getConnection() throws SQLException {
        try {

            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {

            throw new SQLException("MySQL JDBC Driver not found", e);
        }
        return DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
    }

        public boolean bookSession(Sessionbean session) {
        String sql = "INSERT INTO Training_Sessions(student_name, branch_location, lesson_type, status) VALUES (?, ?, ?, ?)";

        try (Connection conn = getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, session.getStudent_name());
            ps.setString(2, session.getBranch_location());
            ps.setString(3, session.getLesson_type());
            ps.setString(4, session.getStatus());

            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public List<Sessionbean> getAllSessions() {
        List<Sessionbean> list = new ArrayList<>();
        String sql = "SELECT * FROM Training_Sessions ORDER BY branch_location ASC";

        try (Connection conn = getConnection();
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery(sql)) {

            while (rs.next()) {
                Sessionbean sb = new Sessionbean();
                sb.setSession_id(rs.getInt("session_id"));
                sb.setStudent_name(rs.getString("student_name"));
                sb.setBranch_location(rs.getString("branch_location"));
                sb.setLesson_type(rs.getString("lesson_type"));
                sb.setStatus(rs.getString("status"));
                list.add(sb);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return list;
    }
}
