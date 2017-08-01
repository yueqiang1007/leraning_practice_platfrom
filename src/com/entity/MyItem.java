package com.entity;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;

/**我的项目
 * Created by euyer on 2017/4/22.
 */
@Entity
public class MyItem {
    //主键ID
    private String myId;
    //用户
    private User user;
    //项目
    private Item item;

    @Id
    @GenericGenerator(name="uu",strategy="uuid")
    @GeneratedValue(generator="uu")
    public String getMyId() {
        return myId;
    }

    public void setMyId(String myId) {
        this.myId = myId;
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
    public Item getItem() {
        return item;
    }

    public void setItem(Item item) {
        this.item = item;
    }

    @Override
    public String toString() {
        return "MyItem{" +
                "myId='" + myId + '\'' +
                ", user=" + user +
                ", item=" + item +
                '}';
    }
}
