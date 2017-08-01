package com.entity;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

/**
 * Created by euyer on 2017/4/22.
 */
@Entity
public class AttenCourse {
    //id
    private String AttenId;
    //用户实体
    private User user;
    //课程实体
    private Course couse;

    @Id
    @GenericGenerator(name = "uu", strategy = "uuid")
    @GeneratedValue(generator = "uu")
    public String getAttenId() {
        return AttenId;
    }

    public void setAttenId(String attenId) {
        AttenId = attenId;
    }
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn
    public Course getCouse() {
        return couse;
    }

    public void setCouse(Course couse) {
        this.couse = couse;
    }

    @Override
    public String toString() {
        return "AttenCourse{" +
                "AttenId='" + AttenId + '\'' +
                ", user=" + user +
                ", couse=" + couse +
                '}';
    }
}
