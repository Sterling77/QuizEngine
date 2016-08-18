package quizEngine.entities;

import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by Letricia on 8/17/16.
 */
@Transactional
public interface QuizDAO extends CrudRepository<Quiz, Long> {
}
