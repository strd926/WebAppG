package com.mpappa.webappg.repositorio;

import com.mpappa.webappg.models.User;

import java.util.ArrayList;
import java.util.List;

public class UserRepository {
    private static List<User> users = new ArrayList<>();
    private static int currentId = 1;

    public List<User> findAll() {
        return new ArrayList<>(users);
    }

    public User findByEmail(String email) {
        return users.stream()
                .filter(user -> user.getEmail().equals(email))
                .findFirst()
                .orElse(null);
    }

    public void save(User user) {
        user.setId(nextId());
        users.add(user);
    }

    public int nextId() {
        return currentId++;
    }
}