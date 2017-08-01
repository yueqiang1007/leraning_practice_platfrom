package com.entity;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.Date;

/**
 * Created by euyer on 2017/4/23.
 */
@Entity
public class CompleteItem {
    //项目Id
    private String comId;
    //完成作品名称
    private String itemName;
    //作品文件名
    private String itemText;
    //完成时间
    private Date completeTime;
    //采纳状态
    private int sert;
    //完成的用户体
    private User user;
    //对应项目
    private Item item;

    @Id
    @GenericGenerator(name = "uu", strategy = "uuid")
    @GeneratedValue(generator = "uu")
    public String getComId() {
        return comId;
    }

    public void setComId(String comId) {
        this.comId = comId;
    }
    @Column
    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }
    @Column
    public String getItemText() {
        return itemText;
    }

    public void setItemText(String itemText) {
        this.itemText = itemText;
    }
    @Temporal(TemporalType.DATE)
    public Date getCompleteTime() {
        return completeTime;
    }

    public void setCompleteTime(Date completeTime) {
        this.completeTime = completeTime;
    }
    @ManyToOne(fetch=FetchType.EAGER)
    @JoinColumn
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
    @ManyToOne(fetch=FetchType.EAGER)
    @JoinColumn
    public Item getItem() {
        return item;
    }

    public void setItem(Item item) {
        this.item = item;
    }

    @Column
    public int getSert() {
        return sert;
    }

    public void setSert(int sert) {
        this.sert = sert;
    }

    @Override
    public String toString() {
        return "CompleteItem{" +
                "comId='" + comId + '\'' +
                ", itemName='" + itemName + '\'' +
                ", itemText='" + itemText + '\'' +
                ", completeTime=" + completeTime +
                ", user=" + user +
                ", item=" + item +
                '}';
    }

}
