package com.asm.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.asm.entities.OrderDetails;


@Repository
public interface OrderDetailRepository extends JpaRepository<OrderDetails, Integer> {

}
