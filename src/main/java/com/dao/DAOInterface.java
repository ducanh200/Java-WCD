package com.dao;

import java.util.List;
public interface DAOInterface<S> {

    List<S> get();

    boolean create(S s);

    boolean update(S s);
    boolean Delete(S s);

    <K> S find(K id);
}
