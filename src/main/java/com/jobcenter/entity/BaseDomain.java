package com.jobcenter.entity;

import org.apache.commons.lang.builder.ToStringBuilder;

import java.io.Serializable;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: jobcenter
 * Date: 2018-04-22
 * Time: 8:43
 * Mail: jobcenter@126.com
 */
public class BaseDomain implements Serializable {
    @Override
    public String toString() {
        return ToStringBuilder.reflectionToString(this);
    }
}
