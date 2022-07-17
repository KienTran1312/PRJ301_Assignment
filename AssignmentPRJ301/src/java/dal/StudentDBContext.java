/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Assessment;
import model.Course;
import model.Department;
import model.Exam;
import model.Group;
import model.Student;

/**
 *
 * @author Tkien
 */
public class StudentDBContext extends DBContext {

    public List<Course> getAllSubject() {
        List<Course> list = new ArrayList<>();

        try {
            String sql = "select * from Course";
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Department d = new Department();
                Group gr = new Group();
                Course c = new Course();
                c.setCourseId(rs.getString("CourseId"));
                c.setcName(rs.getString("Cname"));
                d.setDeptId(rs.getString("DeptId"));
                gr.setGroupId(rs.getString("GroupId"));
                c.setDept(d);
                c.setGroup(gr);
                list.add(c);
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public List<Student> getAllStudent() {
        List<Student> list = new ArrayList<>();

        try {
            String sql = "select * from Student";
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Department d = new Department();
                Group gr = new Group();
                Student s = new Student();
                s.setSid(rs.getString("Sid"));
                s.setSname(rs.getString("Sname"));
                s.setGender(rs.getBoolean("Gender"));
                s.setDob(rs.getDate("Dob"));
                d.setDeptId(rs.getString("DeptId"));
                gr.setGroupId(rs.getString("GroupId"));
                s.setUserName(rs.getString("Username"));
                s.setDept(d);
                s.setGroup(gr);
                list.add(s);
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public List<Assessment> getAllMarkReport(String sid, String cid) {
        List<Assessment> list = new ArrayList<>();

        try {
            String sql = "select e.Sid,ass.CourseId, ass.Aname, ass.Weight, e.Score \n"
                    + "from Assessment ass inner join Exam e on ass.Aid = e.Aid \n"
                    + "where e.Sid = ? and ass.CourseId=?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, sid);
            st.setString(2, cid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Exam e = new Exam();
                Assessment a = new Assessment();
                a.setName(rs.getString("Aname"));
                a.setWeight(rs.getFloat("Weight"));
                e.setScore(rs.getFloat("Score"));
                a.setExam(e);
                list.add(a);
                
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

//    public static void main(String[] args) {
//        StudentDBContext d = new StudentDBContext();
//        List<Assessment> ls = d.getAllMarkReport("he160491", "PRJ301");
//        for (Assessment l : ls) {
//            System.out.println(l.getExam().getScore());
//        }
//    }
}
