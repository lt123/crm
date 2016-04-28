package com.gogo.crm.common.page;

import java.util.List;

/**
 * Created by Administrator on 2016/4/28.
 */
public class PageResult<T> {
    private Integer totalCount;
    private Integer totalPage;
    private Integer pageSize;
    private Integer currentPage;
    private List<T> rows;

    public List<T> getRows() {
        return rows;
    }

    public void setRows(List<T> rows) {
        this.rows = rows;
    }

    public Integer getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(Integer totalCount) {
        this.totalCount = totalCount;
    }

    public Integer getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(Integer totalPage) {
        this.totalPage = totalPage;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public Integer getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(Integer currentPage) {
        this.currentPage = currentPage;
    }

    @Override
    public String toString() {
        return "PageResult{" +
                "totalCount=" + totalCount +
                ", totalPage=" + totalPage +
                ", pageSize=" + pageSize +
                ", currentPage=" + currentPage +
                ", rows=" + rows +
                '}';
    }
}
