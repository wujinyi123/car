package com.ddz.car.common;

import lombok.Data;

/**
 * 用的分页都继承这个类
 */
@Data
public class PageQO {
    /**
     * 页码
     */
    private Integer page = 1;

    /**
     * 每页条数
     */
    private Integer limit = 10;

}
