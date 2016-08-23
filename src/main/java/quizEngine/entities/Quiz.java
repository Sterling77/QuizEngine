package quizEngine.entities;
//package com.tracker.data;


import org.springframework.transaction.annotation.Transactional;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.ArrayList;

/**
 * Created by Letricia on 8/17/16.
 */

@Entity
@Table(name = "quiztracker")
public class Quiz {


    public int correct;
    public int incorrect;
    public int totalQuestions;
    public String name;
    public String email;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;


//    public double averageNumberCorrect;
//    public double averageNumberIncorrect;
//    public int totalQuizzes;
//    public int totalUsers;

//    public int getTotalQuizzes() {
//        return totalQuizzes;
//    }
//
//    public void setTotalQuizzes(int totalQuizzes) {
//        this.totalQuizzes = totalQuizzes;
//    }
//
//    public int getTotalUsers() {
//        return totalUsers;
//    }
//
//    public void setTotalUsers(int totalUsers) {
//        this.totalUsers = totalUsers;
//    }
//
//    public double getAverageNumberCorrect() {
//        return averageNumberCorrect;
//    }
//
//    public void setAverageNumberCorrect(double averageNumberCorrect) {
//        this.averageNumberCorrect = averageNumberCorrect;
//    }
//
//    public double getAverageNumberIncorrect() {
//        return averageNumberIncorrect;
//    }
//
//    public void setAverageNumberIncorrect(double averageNumberIncorrect) {
//        this.averageNumberIncorrect = averageNumberIncorrect;
//    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }


    public int getIncorrect() {
        return incorrect;
    }

    public void setIncorrect(int incorrect) {
        this.incorrect = incorrect;
        updateStats();
        System.out.println("incorrect: " + incorrect);
    }
    public int getAverageNumberIncorrect() {
        if (this.totalQuestions == 0)
            return 0;

        return 100 * this.incorrect / this.totalQuestions;


    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }


    public int getCorrect() {
        return correct;
    }

    public void setCorrect(int correct) {
        this.correct = correct;
        updateStats();
        System.out.println("correct: " + correct);
    }

//    public int getWrong() {
//        return incorrect;
//    }
//
//    public void setWrong(int incorrect) {
//        this.incorrect = incorrect;
//        updateStats();
//    }updateStats


    public int getTotalQuestions() {
        return totalQuestions;
    }

    public void setTotalQuestions(int totalQuestions) {
        this.totalQuestions = totalQuestions;
    }

    public void updateStats() {
//        this.averageNumberCorrect = 1.0*this.correct/this.incorrect;
    }

    public int getAverageNumberCorrect() {
        if (this.totalQuestions == 0)
            return 0;

        return 100 * this.correct / this.totalQuestions;

    }


    //   public void updateStats() {
//        this.averageNumberIncorrect = 1.0*this.correct/this.incorrect;


}








