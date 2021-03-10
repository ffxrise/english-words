package com.ffx.englishwords.domain;

import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 
 * </p>
 *
 * @author ffx
 * @since 2021-03-10
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("words_word_level_r")
public class WordLevelR implements Serializable {

    private static final long serialVersionUID = 1L;

    private Integer id;

    private Integer wordId;

    private Integer levelId;


}
