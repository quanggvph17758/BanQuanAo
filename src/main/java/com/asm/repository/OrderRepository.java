package com.asm.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.asm.entities.Orders;


@Repository
public interface OrderRepository extends JpaRepository<Orders, Integer> {

}
