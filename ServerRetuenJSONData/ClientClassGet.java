package com.fetchvalue.ClientGetProg;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import org.json.JSONException;
import org.json.JSONObject;

public class ClientClassGet {
  public static void main(String args[]) throws IOException, JSONException, InterruptedException{
    URL url = new URL("http://localhost:8181/ClientGetProg/getResource1/getdata");
    HttpURLConnection con = (HttpURLConnection) url.openConnection();
    con.setRequestMethod("GET");
    con.setRequestProperty("Accept", "application/json");
    BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
    String inputLine;
    StringBuffer response=new StringBuffer();
    while ((inputLine = in.readLine()) != null) {
    	response.append(inputLine);
    }
    System.out.println(response);
    in.close();
    con.disconnect();
    JSONObject myresponse=new JSONObject(response.toString());
    int lengthOfJsonObject=myresponse.names().length();
    Readings readings=null;
    for(int i=0;i<lengthOfJsonObject;i++){
    	readings=new Readings();
    	JSONObject myresponse1=new JSONObject(myresponse.getJSONObject(i+"").toString());
    	double r=myresponse1.getDouble("ramUsed");
    	readings.setRamUsed((float) r);
    	double d=myresponse1.getDouble("diskUsed");
    	readings.setDiskUsed((float) d);
    	double c=myresponse1.getDouble("cpuUtilization");
    	readings.setCpuUtilization(c);
    	String s=myresponse1.getString("readDateTime");
    	readings.setReadDateTime(s);
    	System.out.println(r+"  "+d+"  "+"  "+c+"  "+s);
    	//Thread.sleep(2000);
    }
  }
}
