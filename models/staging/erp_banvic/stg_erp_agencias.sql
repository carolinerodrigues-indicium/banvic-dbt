with 
    fonte_agencias as (
        select *
        from {{source('erp', 'agencias')}} 
    )
    , renomeado as(
        select 
        cast(cod_agencia as int) pk_agencia
        ,cast(cod_localidade as int) fk_localidade
        ,nome as nome_agencia
        ,endereco as endereco_agencia
        ,cast(data_abertura as date) as data_abertura_agencia
        ,tipo_agencia 
        from fonte_agencias
    )

select *
from renomeado
