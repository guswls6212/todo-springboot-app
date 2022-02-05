package com.example.demo.persistence;

import com.example.demo.model.TodoEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TodoRepository extends JpaRepository<TodoEntity, String> {

    // ?1은 메서드의 매개변수의 순서 위치다.
    @Query(value = "SELECT t FROM Todo t WHERE t.userId = :userId")
    List<TodoEntity> findByUserId(@Param("userId") String userId);

}
