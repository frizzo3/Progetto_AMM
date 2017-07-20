package amm.m3.Classi;

public class Utente {
    private int id;
    private String nome;
    private String cognome;
    private String username;
    private String URLimmagine;
    private String frase;
    private String data;
    private String password;

    public Utente() {
        this.id = 0;
        this.nome = "";
        this.cognome = "";
        this.username = "";
        this.URLimmagine = "";
        this.frase = "";
        this.data = "";
        this.password = "";
    }

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the nome
     */
    public String getNome() {
        return nome;
    }

    /**
     * @param nome the nome to set
     */
    public void setNome(String nome) {
        this.nome = nome;
    }

    /**
     * @return the cognome
     */
    public String getCognome() {
        return cognome;
    }

    /**
     * @param cognome the cognome to set
     */
    public void setCognome(String cognome) {
        this.cognome = cognome;
    }

    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return the URLimmagine
     */
    public String getURLimmagine() {
        return URLimmagine;
    }

    /**
     * @param URLimmagine the URLimmagine to set
     */
    public void setURLimmagine(String URLimmagine) {
        this.URLimmagine = URLimmagine;
    }

    /**
     * @return the frase
     */
    public String getFrase() {
        return frase;
    }

    /**
     * @param frase the frase to set
     */
    public void setFrase(String frase) {
        this.frase = frase;
    }

    /**
     * @return the data
     */
    public String getData() {
        return data;
    }

    /**
     * @param data the data to set
     */
    public void setData(String data) {
        this.data = data;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public boolean equals(Object otherUser) {
        if (otherUser instanceof Utente)
            if (this.getId() == ((Utente) otherUser).getId()) return true;
        return false;
    }
}