with
    colaboradores as (
        select *
        from {{ ref('stg_erp_colaboradores') }}
    )
    , localidades as (
        select *
        from {{ ref('stg_erp_localidades') }}
    )
    , colaboradores_enriquecido as (
        select
        c.pk_colaborador
        ,c.fk_localidade
        ,c.fk_gerente
        ,c.nome_colaborador
        ,c.email_colaborador
        ,c.cpf_colaborador
        ,c.data_nascimento
        ,c.endereco_colaborador
        ,c.cep_colaborador 
        ,l.cidade as cidade_colaborador
        ,l.uf as uf_colaborador 
        from colaboradores c
        left join localidades l
            on c.fk_localidade = l.pk_localidade
    )

select *
from colaboradores_enriquecido



