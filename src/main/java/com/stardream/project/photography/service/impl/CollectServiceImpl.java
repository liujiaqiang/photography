package com.stardream.project.photography.service.impl;

import java.io.Serializable;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("collectService")
@Transactional
public class CollectServiceImpl<T, K extends Serializable> extends GenericServiceImpl<T, K> {

}
