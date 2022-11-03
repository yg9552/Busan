package com.yg.infra;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class HomeController {
	
	@RequestMapping(value = "/test/publicCorona1List")
	public String publicCorona1List(Model model) throws Exception {
		
		System.out.println("asdfasdfasdf");
		
		String apiUrl = "https://openapi.its.go.kr:9443/cctvInfo?apiKey=bce17be114b549e481e9c1300b23a333&type=ex&cctvType=1&minX=127.100000&maxX=127.390000&minY=35.100000&maxY=39.100000&getType=json";
		
		URL url = new URL(apiUrl);
		HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
		httpURLConnection.setRequestMethod("GET");
		
		BufferedReader bufferedReader;
		if (httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <= 300) {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		} else {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
		}
		
		StringBuilder stringBuilder = new StringBuilder();
		String line;
		while ((line = bufferedReader.readLine()) != null) {
			System.out.println("line: " + line);
			stringBuilder.append(line);
		}

		bufferedReader.close();
		httpURLConnection.disconnect();

		System.out.println("stringBuilder.toString(): " + stringBuilder.toString());
		
//		json object + array string -> java map
		
        ObjectMapper objectMapper = new ObjectMapper();
        Map<String, Object> map = objectMapper.readValue(stringBuilder.toString(), Map.class);
        
        System.out.println("######## Map");
		for (String key : map.keySet()) {
			String value = String.valueOf(map.get(key));	// ok
			System.out.println("[key]:" + key + ", [value]:" + value);
		}
		
		
//		String aaa = (String) header.get("resultCode");
		
//		System.out.println("header.get(\"resultCode\"): " + header.get("resultCode"));
//		System.out.println("header.get(\"resultMsg\"): " + header.get("resultMsg"));
		

		Map<String, Object> response = new HashMap<String, Object>();
		response = (Map<String, Object>) map.get("response");
		
		List<Home> data = new ArrayList<Home>();
		data = (List<Home>) response.get("data");
		
		System.out.println("data.size(): " + data.size());
		
//		for(Home item : items) {
//			System.out.println(item.getMM());
//		}
		
		//model.addAllAttributes(data);
		model.addAttribute("data", data);
		
		return "test/publicCorona1List";
	}
	
	/*
	 * @RequestMapping(value = "/test/publicCorona1List") public String
	 * publicCorona1List(Model model) throws Exception {
	 * 
	 * System.out.println("asdfasdfasdf");
	 * 
	 * String apiUrl =
	 * "http://apis.data.go.kr/1471000/CovidDagnsRgntProdExprtStusService/getCovidDagnsRgntProdExprtStusInq?serviceKey=dNLcjyriV9IBD5djvIMsq16GYwW%2F8N%2FCtnCNvRj66yaLV9jXKhipDNCJFDcDzorgqnVsJsz5gmYoibNbAG0sdw%3D%3D&numOfRows=3&pageNo=1&type=json";
	 * 
	 * URL url = new URL(apiUrl); HttpURLConnection httpURLConnection =
	 * (HttpURLConnection) url.openConnection();
	 * httpURLConnection.setRequestMethod("GET");
	 * 
	 * BufferedReader bufferedReader; if (httpURLConnection.getResponseCode() >= 200
	 * && httpURLConnection.getResponseCode() <= 300) { bufferedReader = new
	 * BufferedReader(new InputStreamReader(httpURLConnection.getInputStream())); }
	 * else { bufferedReader = new BufferedReader(new
	 * InputStreamReader(httpURLConnection.getErrorStream())); }
	 * 
	 * StringBuilder stringBuilder = new StringBuilder(); String line; while ((line
	 * = bufferedReader.readLine()) != null) { System.out.println("line: " + line);
	 * stringBuilder.append(line); }
	 * 
	 * bufferedReader.close(); httpURLConnection.disconnect();
	 * 
	 * System.out.println("stringBuilder.toString(): " + stringBuilder.toString());
	 * 
	 * // json object + array string -> java map
	 * 
	 * ObjectMapper objectMapper = new ObjectMapper(); Map<String, Object> map =
	 * objectMapper.readValue(stringBuilder.toString(), Map.class);
	 * 
	 * System.out.println("######## Map"); for (String key : map.keySet()) { String
	 * value = String.valueOf(map.get(key)); // ok System.out.println("[key]:" + key
	 * + ", [value]:" + value); }
	 * 
	 * Map<String, Object> header = new HashMap<String, Object>(); header =
	 * (Map<String, Object>) map.get("header");
	 * 
	 * System.out.println("######## Header"); for (String key : header.keySet()) {
	 * String value = String.valueOf(header.get(key)); // ok
	 * System.out.println("[key]:" + key + ", [value]:" + value); }
	 * 
	 * // String aaa = (String) header.get("resultCode");
	 * 
	 * // System.out.println("header.get(\"resultCode\"): " +
	 * header.get("resultCode")); //
	 * System.out.println("header.get(\"resultMsg\"): " + header.get("resultMsg"));
	 * 
	 * Map<String, Object> body = new HashMap<String, Object>(); body = (Map<String,
	 * Object>) map.get("body");
	 * 
	 * List<Home> items = new ArrayList<Home>(); items = (List<Home>)
	 * body.get("items");
	 * 
	 * 
	 * System.out.println("items.size(): " + items.size());
	 * 
	 * // for(Home item : items) { // System.out.println(item.getMM()); // }
	 * 
	 * model.addAllAttributes(header); model.addAllAttributes(body);
	 * 
	 * return "test/publicCorona1List"; }
	 */}
