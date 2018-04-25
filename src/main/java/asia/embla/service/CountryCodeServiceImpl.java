package asia.embla.service;

import asia.embla.dto.CountryCodeDTO;
import asia.embla.entity.CountryCode;
import asia.embla.repository.CountryCodeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by tharsan on 4/24/18.
 */
@Service
public class CountryCodeServiceImpl implements CountryCodeService {
    @Autowired
    private CountryCodeRepository repository;

    private final static String CREATED = "CountryCode has been created successfully";
    private final static String DELETED = "CountryCode has been deleted successfully";

    @Override
    public List<CountryCodeDTO> getCountryCodes() {
        List<CountryCodeDTO> countryCodeDTOs = new ArrayList<>();
        CountryCodeDTO countryCodeDTO = null;
        List<CountryCode> countryCodes = repository.findAll();
        for(CountryCode countryCode : countryCodes){
            countryCodeDTO = new CountryCodeDTO();
            countryCodeDTO.setId(countryCode.getId());
            countryCodeDTO.setName(countryCode.getName());
            countryCodeDTO.setCode(countryCode.getCode());
            countryCodeDTO.setIsoCode(countryCode.getIsoCode());
            countryCodeDTOs.add(countryCodeDTO);
        }
        return countryCodeDTOs;
    }

    @Override
    public String createCountryCode(CountryCodeDTO countryCodeDTO) {
        CountryCode countryCode = new CountryCode();
        countryCode.setId(countryCodeDTO.getId());
        countryCode.setName(countryCodeDTO.getName());
        countryCode.setCode(countryCodeDTO.getCode());
        countryCode.setIsoCode(countryCodeDTO.getIsoCode());
        repository.save(countryCode);
        return CREATED;
    }

    @Override
    public String deleteCountryCode(int id) {
        repository.delete(id);
        return DELETED;
    }
}
