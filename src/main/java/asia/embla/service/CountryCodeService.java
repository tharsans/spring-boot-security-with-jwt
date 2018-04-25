package asia.embla.service;

import asia.embla.dto.CountryCodeDTO;

import java.util.List;

/**
 * Created by tharsan on 2/22/18.
 */
public interface CountryCodeService {
    List<CountryCodeDTO> getCountryCodes();
    String createCountryCode(CountryCodeDTO countryDTO);
    String deleteCountryCode(int id);
}
