package be.thomasmore.bookserver.services;

import be.thomasmore.bookserver.model.Award;
import be.thomasmore.bookserver.repositories.AwardRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;
import java.util.Optional;

@Service
public class AwardService {
    @Autowired
    private AwardRepository awardRepository;

    public List<Award> getAllAwards() {
        return (List<Award>) awardRepository.findAll();
    }

    public Optional<Award> getAwardDetails(int id) {
        Optional<Award> award = awardRepository.findById(id);
        if (award.isEmpty())
            throw new ResponseStatusException(HttpStatus.NOT_FOUND,
                    String.format("Award with id %d not found.", id));
        return award;
    }

    public Award create(Award award) {
        return awardRepository.save(award);
    }

    public Award edit(int id, Award award) {
        if (award.getId() != id)
            throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR,
                    String.format("id in award (%d) does not match id in URL (%d).", award.getId(), id));

        Optional<Award> awardFromDb = awardRepository.findById(id);
        if (awardFromDb.isEmpty())
            throw new ResponseStatusException(HttpStatus.NOT_FOUND,
                    String.format("Award with id %d not found.", id));


        return awardRepository.save(award);
    }

    public void delete(int id) {
        Optional<Award> awardFromDb = awardRepository.findById(id);
        if (awardFromDb.isEmpty())
            throw new ResponseStatusException(HttpStatus.NOT_FOUND,
                    String.format("Award with id %d not found.", id));

        awardRepository.deleteById(id);
    }
}
