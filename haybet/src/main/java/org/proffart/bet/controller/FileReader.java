package org.proffart.bet.controller;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;

public class FileReader {

	public static String readJson(String filePath) throws IOException {
		BufferedReader br = null;
		try {
			FileInputStream fis = new FileInputStream(filePath);
			br = new BufferedReader(new InputStreamReader(fis, "UTF8"));
			StringBuilder sb = new StringBuilder();
			String line = br.readLine();
			while (line != null) {
				sb.append(line);
				sb.append(System.lineSeparator());
				line = br.readLine();
			}
			String everything = sb.toString();
			return everything;
		} finally {
		//	br.close();
		}
	}

}
