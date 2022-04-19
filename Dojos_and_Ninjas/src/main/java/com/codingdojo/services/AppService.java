package com.codingdojo.services;

import java.util.List;

import com.codingdojo.models.Dojo;
import com.codingdojo.models.Ninja;
import com.codingdojo.repositories.DojoRepository;
import com.codingdojo.repositories.NinjaRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AppService {
    @Autowired
    private NinjaRepository nRepo;
    @Autowired
    private DojoRepository dRepo;

    public List<Dojo> allDojos() {
        return this.dRepo.findAll();
    }

    public Dojo createDojo(Dojo dojo) {
        return this.dRepo.save(dojo);
    }

    public Ninja createNinja(Ninja ninja) {
        return this.nRepo.save(ninja);
    }

    public Dojo getOneDojo(Long id) {
        return this.dRepo.findById(id).orElse(null);
    }
}
