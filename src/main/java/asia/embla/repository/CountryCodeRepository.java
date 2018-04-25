package asia.embla.repository;

import asia.embla.entity.CountryCode;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by tharsan on 2/22/18.
 */
@Repository
public interface CountryCodeRepository extends JpaRepository<CountryCode, Integer> {
}
