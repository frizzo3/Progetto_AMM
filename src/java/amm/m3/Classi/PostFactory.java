package amm.m3.Classi;

import java.util.ArrayList;

public class PostFactory {

    private static PostFactory singleton;

    public static PostFactory getInstance() {
        if (singleton == null) {
            singleton = new PostFactory();
        }
        return singleton;
    }

    private ArrayList < Post > postList = new ArrayList < Post > ();

    private PostFactory() {
        
        Post post1 = new Post();
        post1.setId(1);
        post1.setCreatorId(1); 
        post1.setText("Hey ragazzi");
        post1.setIsText(true);
        postList.add(post1);
        Post post2 = new Post();
        post2.setId(2);
        post2.setCreatorId(1); 
        post2.setImage("Img/post1.jpg");
        post2.setIsText(false);
        postList.add(post2);
        Post post3 = new Post();
        post3.setId(3);
        post3.setCreatorId(2); 
        post3.setText("Oggi tatuaggio nuovo ;)");
        post3.setIsText(true);
        postList.add(post3);
        Post post4 = new Post();
        post4.setId(4);
        post4.setCreatorId(2); 
        post4.setImage("Img/post2.jpg");
        post4.setIsText(false);
        postList.add(post4);
        Post post5 = new Post();
        post5.setId(5);
        post5.setCreatorId(3); 
        post5.setText("NOIAAAAAH");
        post5.setIsText(true);
        postList.add(post5);
        Post post6 = new Post();
        post6.setId(6);
        post6.setCreatorId(3); 
        post6.setImage("Img/post3.jpg");
        post6.setIsText(false);
        postList.add(post6);

    }

    public Post getPostById(int id) {
        for (Post post: this.postList) {
            if (post.getId() == id) {
                return post;
            }
        }
        return null;
    }

    public ArrayList < Post > getPostList(Utente usr) {
        ArrayList < Post > returnlist = new ArrayList < > ();
        for (Post post: this.postList) {
            if (post.getCreatorId() == usr.getId())
                returnlist.add(post);
        }
        return returnlist;
    }

    public ArrayList < Post > getPostList(Gruppo gruppo) {
        ArrayList < Post > returnlist = new ArrayList < > ();
        for (Post post: this.postList) {
            if (post.getCreatorId() == gruppo.getId())
                returnlist.add(post);
        }
        return returnlist;
    }

}