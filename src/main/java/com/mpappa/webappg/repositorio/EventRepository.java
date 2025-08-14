package com.mpappa.webappg.repositorio;
import com.mpappa.webappg.models.Event;

import java.util.ArrayList;
import java.util.List;

public class EventRepository {
    private static List<Event> events = new ArrayList<>();
    private static int currentId = 1;

    public List<Event> findAll(){
        return new ArrayList<>(events);
    }

    public void save(Event event){
        event.setId(nextId());
        events.add(event);
    }

    public void deleteById(int id){
        events.removeIf(event -> event.getId() == id);
    }

    public int nextId(){
        return currentId++;
    }
}
