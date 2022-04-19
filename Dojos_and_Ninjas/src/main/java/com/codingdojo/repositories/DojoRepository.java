package com.codingdojo.repositories;

import java.util.List;

import com.codingdojo.models.Dojo;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DojoRepository extends CrudRepository<Dojo, Long>{
    List<Dojo> findAll();
}
