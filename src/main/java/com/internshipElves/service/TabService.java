package com.internshipElves.service;

import com.internshipElves.entity.Tab;

import java.util.List;

public interface TabService {
    List<Tab> getAllTabs();

    Tab getByTabNameEn(String tabName);
}
