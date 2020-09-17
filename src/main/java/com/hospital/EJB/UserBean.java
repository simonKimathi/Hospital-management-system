package com.hospital.EJB;

import com.hospital.model.User;

import javax.ejb.Remote;
import javax.ejb.Stateless;
import javax.persistence.*;

@Stateless
@Remote
@NamedQueries(
        @NamedQuery(name = "q_get_User", query = "SELECT u FROM User u WHERE u.userName = :user AND u.password= :pass")
)
public class UserBean implements UserBeanI {

    private String q_get_User;

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public String removeUser(User user) {
        entityManager.remove(entityManager.find(User.class, user));
        return "Deleted";
    }

    @Override
    public User getUser(int id) {
        return entityManager.find(User.class, id);
    }

    @Override
    public User getUser(String username, String pwd) {
        try {
            Query q = entityManager.createQuery(q_get_User);
            q.setParameter("user", username);
            q.setParameter("pass", pwd);
            return (User) q.getSingleResult();
        } catch (Exception e) {
            System.err.println(e.getMessage());
            return null;
        }
    }

    @Override
    public String registerUser(User user) {

        entityManager.merge(user);
        return "successful";
    }
}
