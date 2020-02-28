package com.demo.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.data.rest.core.config.RepositoryRestConfiguration;
import org.springframework.data.rest.webmvc.config.RepositoryRestConfigurer;

import com.demo.entity.Book;
import com.demo.entity.MembershipCard;
import com.demo.entity.User;

@Configuration
public class RepositoryConfig implements RepositoryRestConfigurer{
	
	@Override
    public void configureRepositoryRestConfiguration(RepositoryRestConfiguration config) {
        config.exposeIdsFor(User.class);
        config.exposeIdsFor(Book.class);
        config.exposeIdsFor(MembershipCard.class);
    }

}
