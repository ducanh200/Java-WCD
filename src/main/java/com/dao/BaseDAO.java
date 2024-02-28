package com.dao;

import java.util.List;

public class BaseDAO implements DAOInterface  {

    private static BaseDAO _instance;
    private BaseDAO(){

    }

    public static BaseDAO getInstance(){
        if (_instance == null)
            _instance = new BaseDAO();
        return _instance;
    }

    @Override
    public List get() {
        return null;
    }

    @Override
    public boolean create(Object o) {
        return false;
    }

    @Override
    public boolean update(Object o) {
        return false;
    }

    @Override
    public boolean Delete(Object o) {
        return false;
    }

    @Override
    public Object find(Object id) {
        return null;
    }
}
