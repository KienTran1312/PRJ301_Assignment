/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;
import model.Feature;
import model.Role;

/**
 *
 * @author Tkien
 */
public class AccountDBContext extends DBContext {

    public Account getByUsernamePassword(String user, String pass) {
        try {
            String sql = "SELECT a.username,a.displayname,a.lecture, a.student, ISNULL(r.rid,-1) as rid ,r.rname, ISNULL(f.fid,-1) AS fid,f.fname,f.url\n"
                    + "FROM Account a LEFT JOIN Role_Account ra ON a.username = ra.username\n"
                    + "LEFT JOIN [Role] r ON r.rid = ra.rid\n"
                    + "LEFT JOIN [Role_Feature] rf ON rf.rid = r.rid\n"
                    + "LEFT JOIN Feature f ON f.fid = rf.fid\n"
                    + "where a.username = ? AND a.[Password] = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, user);
            stm.setString(2, pass);
            ResultSet rs = stm.executeQuery();
            Account account = null;
            Role currentRole = new Role();
            currentRole.setId(-1);

            Feature currentFeature = new Feature();
            currentFeature.setId(-1);

            while (rs.next()) {
                if (account == null) {
                    account = new Account();
                    account.setDisplayName(rs.getString("displayname"));
                    account.setUsername(user);
                    account.setLecture(rs.getInt("lecture"));
                    account.setStudent(rs.getInt("student"));

                }

                int rid = rs.getInt("rid");
                if (rid != -1) {
                    if (rid != currentRole.getId()) {
                        currentRole = new Role();
                        currentRole.setId(rid);
                        currentRole.setName(rs.getString("rname"));
                        account.getRoles().add(currentRole);
                    }
                }

                int fid = rs.getInt("fid");
                if (fid != -1) {
                    if (fid != currentFeature.getId()) {
                        currentFeature = new Feature();
                        currentFeature.setId(fid);
                        currentFeature.setName(rs.getString("fname"));
                        currentFeature.setUrl(rs.getString("url"));
                        currentRole.getFeatures().add(currentFeature);
                    }
                }

            }
            return account;
        } catch (SQLException ex) {
            Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;

//        try {
//            String sql = "select * from Account where username = ? AND [Password] = ?";
//            PreparedStatement stm = connection.prepareStatement(sql);
//            stm.setString(1, user);
//            stm.setString(2, pass);
//            ResultSet rs = stm.executeQuery();
//            while (rs.next()) {
//                return new Account(rs.getString(1), rs.getString(1), rs.getString(3), rs.getInt(4), rs.getInt(5));
//            }
//            
//        } catch (SQLException ex) {
//            Logger.getLogger(AccountDBContext.class.getName()).log(Level.SEVERE, null, ex);
//        }
//            return null;
    }

    }

