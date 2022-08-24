package com.jsi.tabletennisleague.controllers;

import com.jsi.tabletennisleague.models.Player;
import com.jsi.tabletennisleague.repositories.PlayerRepository;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/api/players")
@RequiredArgsConstructor
public class PlayerController {

    private final PlayerRepository playerRepository;

    @GetMapping
    public List<Player> getPlayers() {
        return playerRepository.findAll();
    }
}
