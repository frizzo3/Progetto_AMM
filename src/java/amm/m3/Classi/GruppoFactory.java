package amm.m3.Classi;

import java.util.ArrayList;

public class GruppoFactory {

    private static GruppoFactory singleton;

    public static GruppoFactory getInstance() {
        if (singleton == null) {
            singleton = new GruppoFactory();
        }
        return singleton;
    }

    private ArrayList < Gruppo > gruppoList = new ArrayList <> ();

    private GruppoFactory() {
        //ID > 10000 per differenziarli dagli utenti (max 1000 utenti)
        ArrayList < Integer > tmp = new ArrayList <> ();
        Gruppo gruppo1 = new Gruppo();
        gruppo1.setId(10000);
        tmp.add(2);
        tmp.add(3);
        gruppo1.setUserList(tmp);
        gruppo1.setNome("Mongolfieristi");
        gruppo1.setURLimmagine("Img/mongolfiera.png");
        gruppoList.add(gruppo1);
        tmp = new ArrayList <> ();
        Gruppo gruppo2 = new Gruppo();
        gruppo2.setId(10001);
        tmp.add(1);
        tmp.add(4);
        gruppo2.setUserList(tmp);
        gruppo2.setNome("Ritardatari");
        gruppo2.setURLimmagine("Img/orologio.jpg");
        gruppoList.add(gruppo2);
    }

    public Gruppo getGruppoById(int id) {
        for (Gruppo gruppo: this.gruppoList) {
            if (gruppo.getId() == id) {
                return gruppo;
            }
        }
        return null;
    }

    public ArrayList < Gruppo > getGroupList(Utente usr) {

        int id = usr.getId();
        ArrayList < Gruppo > returnlist = new ArrayList <> ();
        for (Gruppo gruppo: this.gruppoList) {
            if (gruppo.getUserList().contains(id)) {
                returnlist.add(gruppo);
            }
        }
        return returnlist;
    }
}