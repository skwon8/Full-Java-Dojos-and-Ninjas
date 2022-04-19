package com.codingdojo.repositories;

import com.codingdojo.models.Ninja;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface NinjaRepository extends CrudRepository<Ninja, Long> {
    
}
