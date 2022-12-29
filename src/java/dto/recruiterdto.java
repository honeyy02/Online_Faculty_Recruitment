package dto;
import java.io.Serializable;
public class recruiterdto implements Serializable
{
public String name,recruiter_type,email,password,contact,address,status;
    public recruiterdto() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getRecruiter_type() {
        return recruiter_type;
    }

    public void setRecruiter_type(String recruiter_type) {
        this.recruiter_type = recruiter_type;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
}
