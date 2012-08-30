package com.thoughtworks.twu.persistence;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

@Entity
@Table( name = "FAVORITE_TIMESHEET" )
public class FavoriteTimesheet {

    @Id
    @GeneratedValue(generator="id")
    @GenericGenerator(name="id", strategy = "increment")
    private int id;

    @Column
    private String name;

    @Column
    private String userId;

    public FavoriteTimesheet(String name) {
        this.name = name.trim();
        this.userId = "1234";
    }

}
