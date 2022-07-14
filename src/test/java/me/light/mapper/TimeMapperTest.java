package me.light.mapper;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import lombok.extern.log4j.Log4j;
import me.light.AppTest;

@Log4j
public class TimeMapperTest extends AppTest {

	@Autowired
	TimeMapper mapper;

	@Test
	public void test() {
		String time = mapper.getTime();
		System.out.println(time);
		log.info("log4j 사용 테스트 ....");
	}

}
