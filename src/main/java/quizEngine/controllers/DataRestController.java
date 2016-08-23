package quizEngine.controllers;

/**
 * Created by Letricia on 8/22/16.
 */
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.Assert;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import quizEngine.entities.QuizQuestion;
import quizEngine.entities.QuizQuestionDAO;

@RestController // automatically convert objects to json. 1 of a lot of things it does. find out?
@RequestMapping("/restData/")
public class DataRestController {
    private final QuizQuestionDAO quizQuestionDAO;

    @Autowired
    public DataRestController(QuizQuestionDAO quizQuestionDAO) {
        Assert.notNull(quizQuestionDAO, "QuizQuestionDAO must not be null!");
        this.quizQuestionDAO = quizQuestionDAO;  // populates all questions from the db. then populates them.
    }

    @RequestMapping("getAllQuestions")
    public Iterable<QuizQuestion> getAllQuestions() {
        return quizQuestionDAO.findAll();
    }
}
