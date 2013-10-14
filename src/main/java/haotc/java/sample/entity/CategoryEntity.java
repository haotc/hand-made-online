package haotc.java.sample.entity;

import javax.persistence.*;

/**
 * Created by IntelliJ IDEA.
 * User: haotc
 * Date: 10/10/13
 * Time: 11:10 AM
 * To change this template use File | Settings | File Templates.
 */
@Entity
@Table(name = "category")
public class CategoryEntity {
    private int id;
    private String name;
    private String description;
    private Integer parentCategoryId;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", unique = true, nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Column(name = "name", unique = true, nullable = false)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Column(name = "description")
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Column(name = "parent_category_id")
    public Integer getParentCategoryId() {
        return parentCategoryId;
    }

    public void setParentCategoryId(Integer parentCategoryId) {
        this.parentCategoryId = parentCategoryId;
    }
}
