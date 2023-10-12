package be.thomasmore.bookserver.controllers;

import be.thomasmore.bookserver.model.Award;
import be.thomasmore.bookserver.services.AwardService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/awards")
@Slf4j
public class AwardController {
    @Autowired
    private AwardService awardsService;

    @GetMapping("")
    public List<Award> getAllAwards() {
        log.info("##### Get all awards with id and title");
        return awardsService.getAllAwards();
    }

    @GetMapping("{id}")
    public Optional<Award> getAwardDetails(@PathVariable int id) {
        log.info("##### Get details of award with id " + id);
        return awardsService.getAwardDetails(id);
    }
}
