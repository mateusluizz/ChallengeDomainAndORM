package com.devsuperior.dsevent.models;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.Instant;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor

@Entity
@Table(name = "tb_block")
public class Block {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(columnDefinition = "TIMESTAMP WITH TIME ZONE")
    private Instant startBlock;
    @Column(columnDefinition = "TIMESTAMP WITH TIME ZONE")
    private Instant endBlock;

    @ManyToOne
    @JoinColumn(name = "activity_id")
    private Activity activity;

}
