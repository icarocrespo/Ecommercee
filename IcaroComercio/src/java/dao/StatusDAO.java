package dao;

import modelo.Status;

public class StatusDAO extends GenericDAO<Status, Integer> {

    public StatusDAO() {
        super(Status.class);
    }
}
