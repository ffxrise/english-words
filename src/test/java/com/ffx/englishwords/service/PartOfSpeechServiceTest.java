package com.ffx.englishwords.service;

import com.ffx.englishwords.domain.PartOfSpeech;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.test.context.web.WebAppConfiguration;

import java.util.ArrayList;
import java.util.List;

/*当涉及Spring时：则必须使用@ExtendWith(SpringExtension.class)
当不涉及Spring时：@ExtendWith(MockitoExtension.class)*/
@ExtendWith(SpringExtension.class)
//SpringBoot1.4版本之前用的是@SpringApplicationConfiguration(classes = Application.class)
@SpringBootTest
@WebAppConfiguration
class PartOfSpeechServiceTest {

    @Autowired
    private PartOfSpeechService partOfSpeechService;

    @Test
    public void save(){
        List<PartOfSpeech> list = new ArrayList<>();
        PartOfSpeech partOfSpeech = new PartOfSpeech("n.","名词");
        PartOfSpeech partOfSpeech2 = new PartOfSpeech("pron.","代词");
        PartOfSpeech partOfSpeech3 = new PartOfSpeech("adj.","形容词");
        PartOfSpeech partOfSpeech4 = new PartOfSpeech("adv.","副词");
        PartOfSpeech partOfSpeech5 = new PartOfSpeech("v.","动词");
        PartOfSpeech partOfSpeech6 = new PartOfSpeech("num.","数词");
        PartOfSpeech partOfSpeech7 = new PartOfSpeech("art.","冠词");
        PartOfSpeech partOfSpeech8 = new PartOfSpeech("prep.","介词");
        PartOfSpeech partOfSpeech9 = new PartOfSpeech("conj.","连词");
        PartOfSpeech partOfSpeech10 = new PartOfSpeech("interj.","感叹词");
        list.add(partOfSpeech);
        list.add(partOfSpeech2);
        list.add(partOfSpeech3);
        list.add(partOfSpeech4);
        list.add(partOfSpeech5);
        list.add(partOfSpeech6);
        list.add(partOfSpeech7);
        list.add(partOfSpeech8);
        list.add(partOfSpeech9);
        list.add(partOfSpeech10);

        partOfSpeechService.saveBatch(list);
    }
}