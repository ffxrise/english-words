package com.ffx.englishwords.service.impl;

import com.ffx.englishwords.domain.Word;
import com.ffx.englishwords.dao.WordMapper;
import com.ffx.englishwords.service.WordService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author ffx
 * @since 2021-03-10
 */
@Service
public class WordServiceImpl extends ServiceImpl<WordMapper, Word> implements WordService {

}
