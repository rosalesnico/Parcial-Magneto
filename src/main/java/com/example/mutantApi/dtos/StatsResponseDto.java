package com.example.mutantApi.dtos;

import lombok.*;

@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class StatsResponseDto {
    private long count_mutant_dna; //contador mutantes
    private long count_human_dna; //contador humanos
    private double ratio; //razon mutante humano
}
