package com.jjjh.Status;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("status")
public class StatusController {
	private static final Logger logger = LoggerFactory.getLogger(StatusController.class);
}
