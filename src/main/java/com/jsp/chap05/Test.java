package com.jsp.chap05;

import java.util.List;

public class Test {

    public static void main(String[] args) {

        JdbcBasic jdbc = new JdbcBasic();

//        jdbc.insert(new Person(99, "김덕배", 44));
//        jdbc.insert(new Person(200, "김춘자", 55));
//        jdbc.insert(new Person(300, "박영식", 33));

//        jdbc.delete(200);
//        jdbc.delete(99);

        jdbc.update(300, "삼백", 33);

        List<Person> people = jdbc.findAll();
        System.out.println("people = " + people);
    }
}
