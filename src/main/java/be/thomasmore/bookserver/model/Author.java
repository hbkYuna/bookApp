package be.thomasmore.bookserver.model;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;

import javax.persistence.*;
import java.util.Set;

@NoArgsConstructor
@Data
@EqualsAndHashCode(exclude = {"books"})
@ToString(exclude = {"books"})
@Entity
public class Author {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    private int id;

    private String name;

    @ManyToMany(mappedBy = "authors", fetch = FetchType.LAZY)
    private Set<Book> books;

    public Author(int id) {
        this.id = id;
    }

}
