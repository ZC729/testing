CREATE SEQUENCE public.address_addressid_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

SET default_tablespace = '';

CREATE TABLE public.address (
    addressid bigint DEFAULT nextval('public.address_addressid_seq'::regclass) NOT NULL,
    fulladdress text,
    country character(2),
    countrysubd text,
    addressline1 text,
    addressline2 text,
    locality text,
    postal1 text,
    postal2 text,
    postal3 text
);

COMMENT ON COLUMN public.address.country IS 'The country where the property is located using a subset of ISO-3166 two letter codes.';
COMMENT ON COLUMN public.address.countrysubd IS 'populate with Attom address_countrySubd or kvCore primary_state to start, allow the home owner to override.';
COMMENT ON COLUMN public.address.addressline1 IS 'populate with Attom address_line1 to start, allow the home owner to override.';
COMMENT ON COLUMN public.address.addressline2 IS 'populate with Attom address_line2 to start, allow the home owner to override.';
COMMENT ON COLUMN public.address.locality IS 'populate with Attom address_locality or kvCore primary_city to start, allow the home owner to override.';
COMMENT ON COLUMN public.address.postal1 IS 'populate with Attom address_postal1 or kvCore primary_zip to start, allow the home owner to override.';
COMMENT ON COLUMN public.address.postal2 IS 'The zip code plus 4 value';
COMMENT ON COLUMN public.address.postal3 IS 'The postal carrier route or other';
COMMENT ON COLUMN public.address.addressvalidationdate IS 'Date that the address was validated';
COMMENT ON COLUMN public.address.addressvalidationemail IS 'The email that validated the address.\ntype: email';