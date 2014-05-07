package com.nv.dao;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class JdbcRepository {
	@Autowired
	DataSource dataSource;
	
	private static JdbcTemplate jdbcTemplate;

    public JdbcTemplate getJdbcTemplate(){
    	//System.out.println(dataSource);
    	//System.out.println(jdbcTemplate);
    	if (jdbcTemplate == null){
    		jdbcTemplate = new JdbcTemplate(dataSource);
    		System.out.println("template Created: "+jdbcTemplate);
    	}    	
    	return jdbcTemplate;
    }
}
