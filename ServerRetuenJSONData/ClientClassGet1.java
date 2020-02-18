package com.fetchvalue.ClientGetProg;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import org.json.JSONException;

public class ClientClassGet1 {
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
  }
}
