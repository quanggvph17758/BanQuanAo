package com.asm.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.asm.entities.Categories;

@Repository
public interface CategoryRepository extends JpaRepository<Categories, Integer> {

}
