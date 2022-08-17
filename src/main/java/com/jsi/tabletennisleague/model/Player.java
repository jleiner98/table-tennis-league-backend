package com.jsi.tabletennisleague.model;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity
@Table(name = "Player")
public class Player {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String firstName;
    private String lastName;
}
