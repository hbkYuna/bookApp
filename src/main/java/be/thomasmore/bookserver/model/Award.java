package be.thomasmore.bookserver.model;

import lombok.Getter;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@Entity
public class Award {
    @Getter
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    private int id;

    @NotBlank(message = "Award Title should not be blank")
    @NotNull
    private String title;

    private String info;

    public Award() {
    }

    public Award(String title, String info) {
        this.title = title;
        this.info = info;
    }

}
