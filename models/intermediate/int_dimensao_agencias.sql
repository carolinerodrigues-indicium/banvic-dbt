with
    agencias as (
        select *
        from {{ ref('stg_erp_agencias') }}
    )
    , localidades as (
        select *
        from {{ ref('stg_erp_localidades') }}
    )
    , agencia_enriquecido as (
        select
            a.pk_agencia
            ,a.fk_localidade
            ,a.nome_agencia
            ,a.endereco_agencia
            ,a.data_abertura_agencia
            ,a.tipo_agencia
            ,l.cidade as cidade_agencia
            ,l.uf as uf_agencia
        from agencias a
        left join localidades l
            on a.fk_localidade = l.pk_localidade
    )

select *
from agencia_enriquecido



