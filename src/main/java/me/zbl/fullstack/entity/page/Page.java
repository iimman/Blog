package me.zbl.fullstack.entity.page;

import lombok.Data;

import javax.persistence.Transient;
import java.io.Serializable;

/**
 * 分页请求对象
 */
@Data
public class Page implements Serializable
{
    /**
     * 
     */
    private static final long serialVersionUID = 4802542293232520871L;

    @Transient
    private int pageNum = 1;
    @Transient
    private int pageSize = 10;
    @Transient
    private String orderBy;


}
