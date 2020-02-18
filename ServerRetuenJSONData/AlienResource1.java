package com.fetchvalue.ClientGetProg;

import java.util.List;
import java.util.Map;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.json.JSONObject;

@Path("getResource1")
public class AlienResource1{ 
	
	@GET
	@Path("getdata")
	@Produces(MediaType.APPLICATION_JSON)
	public Map<Integer,Readings> getAllData(){
		Map<Integer,Readings> map=Ripository1.getAllDataFromDataBase();
		return(map);
	}
	
	@GET
	@Path("getdata1")
	@Produces(MediaType.APPLICATION_JSON)
	public List<Readings> getAllData1(){
		List<Readings> list=Ripository1.getAllDataFromDataBase2();
		return(list);
	}
	
	@GET
	@Path("getdata2")
	@Produces(MediaType.APPLICATION_JSON)
	public Map<Integer,List<String>> getAllData2(){
		Map<Integer,List<String>> map=Ripository1.getAllDataFromDataBase3();
		return(map);
	}
	
}

