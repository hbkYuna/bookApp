package be.thomasmore.bookserver.repositories;

import be.thomasmore.bookserver.model.Award;
import org.springframework.data.repository.CrudRepository;

public interface AwardRepository extends CrudRepository<Award, Integer> {
}