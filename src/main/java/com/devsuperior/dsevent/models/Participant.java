package com.devsuperior.dsevent.models;

import jakarta.persistence.*;
import lombok.*;

import java.util.HashSet;
import java.util.Set;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor

@Entity
@Table(name = "tb_participant")
public class Participant {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    @Column(unique = true)
    private String email;

    @Setter(AccessLevel.NONE)
    @ManyToMany
    @JoinTable(
            name = "tb_activity_participant",
            joinColumns = @JoinColumn(name = "participant_id"),
            inverseJoinColumns = @JoinColumn(name = "activity_id")
    )
    private final Set<Activity> activities = new HashSet<>();

}
