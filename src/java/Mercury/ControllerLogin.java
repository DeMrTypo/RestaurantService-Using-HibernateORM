/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Mercury;

import javax.faces.bean.ManagedBean;

/**
 *
 * @author MSI
 *
 */
@ManagedBean
public class ControllerLogin {
    private String username;
    private String password;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    public String login()
    {
        if(username.equals("admin") && password.equals("admin"))
        {
            return "admin";
        }
        else return "user";
    }
}
