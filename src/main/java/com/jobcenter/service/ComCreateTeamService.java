package com.jobcenter.service;

import com.jobcenter.entity.ComCreateTeam;

public interface ComCreateTeamService {
    ComCreateTeam queryByComId(Integer comId);

    /**
     *   添加创始人信息
     * @
     * @return   创始人信息
     */
    public   Integer  saveCreateTeam(Integer comId, String comFounderName, String comPosition, String comWeibo, String comFounderIntro);

    /**
     *   查询创始人信息
     * @param comId
     * @return
     */
    public   ComCreateTeam  queryComCreateTeam(Integer comId);
}
