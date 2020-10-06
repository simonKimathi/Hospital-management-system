package com.hospital.EJB;

import com.hospital.model.Patient;
import com.hospital.model.User;

import javax.ejb.Remote;
import javax.ejb.Stateless;
import javax.persistence.*;
import java.util.List;

@Stateless
@Remote
/*@NamedQueries({
        @NamedQuery(name = "UserDetail.findAll", query = "SELECT u FROM UserDetail u"),
        @NamedQuery(name = "UserDetail.findAllUsersOrdered", query = "SELECT u FROM UserDetail u ORDER BY u.bioData.idNo DESC"),
        @NamedQuery(name = "UserDetail.findById", query = "SELECT u FROM UserDetail u WHERE  u.bioData.idNo = :idNo"),
        @NamedQuery(name = "UserDetail.findByEmail", query = "SELECT u FROM UserDetail u WHERE u.contact.email = :email"),
        @NamedQuery(name = "UserDetail.findByUsername", query = "SELECT u FROM UserDetail u WHERE u.username = :username"),})*/
@NamedQueries(
        @NamedQuery(name = UserBean.NQ_FIND_USER, query = "SELECT u FROM User u WHERE u.userName = :user AND u.password= :pass")
)
public class UserBean implements UserBeanI {

    public static final String  NQ_FIND_USER= "UserBean.findUser";

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public String removeUser(User user) {
        entityManager.remove(entityManager.find(User.class, user));
        return "Deleted";
    }

    @Override
    public List<User> list() {

        return entityManager.createQuery("FROM User u").getResultList();
    }

    @Override
    public User getUserByUserName(String userName) {
        return entityManager.find(User.class, userName);
    }

    @Override
    public User getUserByName(String name) {
        return entityManager.find(User.class, name);
    }

    @Override
    public User getUser(User user) {
        try {
            Query q = entityManager.createQuery("SELECT u FROM User u WHERE u.userName = :user AND u.password= :pass");
            q.setParameter("user", user.getUserName());
            q.setParameter("pass", user.getPassword());
            return (User) q.getSingleResult();
        } catch (Exception e) {
            System.err.println(e.getMessage());
            return null;
        }
    }

    @Override
    public User changePassword(User user) {
        int updatedEntities = entityManager.createQuery(
                "update User u " +
                        "set u.password = :newPassword " +
                        "where u.userName = :userName" )
                .setParameter( "newPassword", user.getPassword() )
                .setParameter( "userName", user.getUserName() )
                .executeUpdate();

        return user;
    }

    @Override
    public String registerUser(User user) {

        entityManager.merge(user);
        return "successful";
    }
}
