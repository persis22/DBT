{{ config(materialized='table') }}

/* To display previous dates*/

{%- set start_datetime = run_started_at - modules.datetime.timedelta(days=7) -%}
{%- set start_date = start_datetime.strftime("%Y-%m-%d") -%}

/* To display current dates*/
{%- set start_datetime = run_started_at -%}
{%- set current_date = start_datetime.strftime("%Y-%m-%d") -%}

select '{{ current_date }}' as Date_time, Roll_Number from  `my-project-persis.dbt_spersis.eligible_candidates`
