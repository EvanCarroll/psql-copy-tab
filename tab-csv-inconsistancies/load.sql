CREATE TEMP TABLE broker_sales (
  license_type varchar(4),
  license_number text,
  full_name text,
  suffix text,
  license_status smallint,
  original_license text,
  license_expiration text,
  education_status smallint,
  mce_status smallint,
  designated_supervisor_flag text,
  phone_number text,
  email_address text,
  mailing_address_line_1 text,
  mailing_address_line_2 text,
  mailing_address_line_3 text,
  mailing_address_city text,
  mailing_address_state_code text,
  mailing_address_zip_code text,
  mailing_address_county_code text,
  physical_address_line_1 text,
  physical_address_line_2 text,
  physical_address_line_3 text,
  physical_address_city text,
  physical_address_state_code text,
  physical_address_zip_code text,
  physical_address_county_code text,
  related_license_type text,
  related_license_number text,
  related_license_full_name text,
  related_license_suffix text,
  relationship_start_date text,
  agency_identifier text,
  full_name_last_first text
);

\echo '\n\n\n NO OPTIONS (defaults to DELIMITER E''\\t'')'
\COPY trec.broker_sales FROM 'data.txt';

\echo '\n\n\n FORMAT CSV, DELIMITER E''\\t'''
\COPY trec.broker_sales FROM 'data.txt' WITH ( FORMAT CSV, DELIMITER E'\t');
