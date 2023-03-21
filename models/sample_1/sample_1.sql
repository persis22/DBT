{{ config(materialized='table') }}


select Roll_Number
from `my-project-persis.dbt_spersis.eligible_candidates`
