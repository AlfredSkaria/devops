package com.nissan.devops;

import static org.junit.Assert.*;

import org.junit.Test;

public class Addtest {

	@Test
	public void testadd() {
		Calculate c= new Calculate();
		assertEquals(10,c.add(5, 5),0);
	}

}
