package be.thomasmore.bookserver.model;

import be.thomasmore.bookserver.model.Author;
import be.thomasmore.bookserver.model.Award;
import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.util.List;
import java.util.Set;
import java.util.HashSet;

@NoArgsConstructor
@AllArgsConstructor
@Builder
@Data
@EqualsAndHashCode(exclude = {"authors", "awards"})
@ToString(exclude = {"authors", "awards"})
@Entity
public class Book {
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    private int id;

    @NotBlank(message = "Book Title should not be blank")
    @NotNull
    private String title;

    @Min(value = 0, message = "price should not be smaller than 0")
    @Max(value = 200, message = "price should not be greater than 200")
    Integer priceInEur;

    private String author = "";

    @ManyToMany(fetch = FetchType.LAZY)
    private List<Author> authors; //this is not normalized but I don't care for this example

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "book_award",
            joinColumns = @JoinColumn(name = "book_id"),
            inverseJoinColumns = @JoinColumn(name = "award_id"))
    private Set<Award> awards = new HashSet<>();
}
