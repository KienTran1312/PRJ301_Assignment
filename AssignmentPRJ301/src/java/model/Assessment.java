/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author Ngo Tung Son
 */
public class Assessment {
    private int id;
    private String name;
    private float weight;
    private Exam exam;
//    private ArrayList<Exam> exams = new ArrayList<>();

    public int getId() {
        return id;
    }

    public Exam getExam() {
        return exam;
    }

    public void setExam(Exam exam) {
        this.exam = exam;
    }
    
    

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getWeight() {
        return weight;
    }

    public void setWeight(float weight) {
        this.weight = weight;
    }

//    public ArrayList<Exam> getExams() {
//        return exams;
//    }
//
//    public void setExams(ArrayList<Exam> exams) {
//        this.exams = exams;
//    }
    
}
