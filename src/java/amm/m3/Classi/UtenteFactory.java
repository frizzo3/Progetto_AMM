package amm.m3.Classi;

import java.util.ArrayList;

public class UtenteFactory {

    private static UtenteFactory singleton;

    public static UtenteFactory getInstance() {
        if (singleton == null) {
            singleton = new UtenteFactory();
        }
        return singleton;
    }

    private ArrayList < Utente > utenteList = new ArrayList <> ();
    private UtenteFactory() {
        Utente utente1 = new Utente();
        utente1.setId(1);
        utente1.setNome("Mario");
        utente1.setCognome("Rossi");
        utente1.setUsername("mariorossi");
        utente1.setURLimmagine("Img/Mario.jpeg");
        utente1.setFrase("Hey there!");
        utente1.setData("28/04/1983");
        utente1.setPassword("rossimario");
        utenteList.add(utente1);
        Utente utente2 = new Utente();
        utente2.setId(2);
        utente2.setNome("Marco");
        utente2.setCognome("Bocci");
        utente2.setUsername("marcobocci");
        utente2.setURLimmagine("Img/Marco.jpg");
        utente2.setFrase("It's me Marco");
        utente2.setData("11/09/1998");
        utente2.setPassword("boccimarco");
        utenteList.add(utente2);
        Utente utente3 = new Utente();
        utente3.setId(3);
        utente3.setNome("Sonia");
        utente3.setCognome("Bergamasco");
        utente3.setUsername("soniabergamasco");
        utente3.setURLimmagine("Img/Sonia.jpg");
        utente3.setFrase("Sonia.");
        utente3.setData("22/02/1951");
        utente3.setPassword("bergamascosonia");
        utenteList.add(utente3);

    }

    public Utente getUserById(int id) {
        for (Utente utente: this.utenteList) {
            if (utente.getId() == id) {
                return utente;
            }
        }
        return null;
    }

    public int getIdByUsernameAndPassword(String username, String password) {
        for (Utente utente: this.utenteList) {
            if (utente.getUsername().equals(username) && utente.getPassword().equals(password)) {
                return utente.getId();
            }
        }
        return -1;
    }

    public ArrayList < Utente > getFriendsByUser(Utente utente) {
        ArrayList < Utente > returnlist = new ArrayList < > ();
        for (Utente tmp: this.utenteList) {
            if (!(tmp.getId() == utente.getId())) {
                returnlist.add(utente);
            }
        }
        return returnlist;
    }
}