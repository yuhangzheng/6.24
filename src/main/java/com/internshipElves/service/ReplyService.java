package com.internshipElves.service;

import com.internshipElves.entity.Reply;

import java.util.List;

public interface ReplyService {

    List<Reply> getRepliesOfTopic(Integer topicId);

    boolean addReply(Reply reply);

    int repliesNum(Integer topicId);
}
