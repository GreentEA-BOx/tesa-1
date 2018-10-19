package dh_ctrl;

import java.io.IOException;
import java.net.URLDecoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import dh_beans.Chat;
import dh_dao.ChatDAO;

@Controller
public class dh_Controller {
	
	@RequestMapping(value="/chatSubmitServlet",method=RequestMethod.POST)
	 public void chatSubmit(HttpServletRequest request, HttpServletResponse response) throws IOException {
	    // do something
		System.out.println("chatSubmitServlet>>");
	    request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html),charset=UTF-8");
		String chatName = URLDecoder.decode(request.getParameter("chatName"),"UTF-8");
		String chatContent = URLDecoder.decode(request.getParameter("chatContent"),"UTF-8");
		if(chatName == null || chatName.equals("")||chatContent == null || chatContent.equals("")) {
			
		}else {
			response.getWriter().write(new ChatDAO().submit(chatName,chatContent) + "");
		}
	}
	
	@RequestMapping(value="/chatListServlet",method=RequestMethod.POST)
	 public void ChatList(HttpServletRequest request, HttpServletResponse response) throws IOException {
	    // do something
		System.out.println("chatListServlet>>");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String listType = request.getParameter("listType");
		System.out.println("listType>"+listType);
		if(listType == null || listType.equals("")) response.getWriter().write("");
		else if(listType.equals("today")) response.getWriter().write(getToday());
		else if(listType.equals("ten")) response.getWriter().write(getTen());
		else {
			try {
				Integer.parseInt(listType);
				response.getWriter().write(getID(listType));
			}catch(Exception e){
				response.getWriter().write("");
			}
		}
	}
	
	public String getToday() {
		StringBuffer result = new StringBuffer("");
		result.append("{\"result\":[");
		ChatDAO chatDAO = new ChatDAO();
		ArrayList<Chat> chatList = chatDAO.getChatList(new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
		for(int i = 0; i < chatList.size(); i++) {
			result.append("[{\"value\":\"" + chatList.get(i).getChatName() + "\"},");
			result.append("{\"value\":\"" + chatList.get(i).getChatContent() + "\"},");
			result.append("{\"value\":\"" + chatList.get(i).getChatTime() + "\"}]");
			if(i != chatList.size() - 1) result.append(",");
		}
		result.append("], \"last\":\"" + chatList.get(chatList.size() -1).getChatID() + "\"}");
		return result.toString();
				
	}
	
	public String getTen() {
		StringBuffer result = new StringBuffer("");
		result.append("{\"result\":[");
		ChatDAO chatDAO = new ChatDAO();
		ArrayList<Chat> chatList = chatDAO.getChatListByRecent(10);
		for(int i = 0; i < chatList.size(); i++) {
			result.append("[{\"value\":\"" + chatList.get(i).getChatName() + "\"},");
			result.append("{\"value\":\"" + chatList.get(i).getChatContent() + "\"},");
			result.append("{\"value\":\"" + chatList.get(i).getChatTime() + "\"}]");
			if(i != chatList.size() - 1) result.append(",");
		}
		result.append("], \"last\":\"" + chatList.get(chatList.size() -1).getChatID() + "\"}");
		System.out.println("result.toString()>"+result.toString());
		return result.toString();
	}
	
	public String getID(String chatID) {
		StringBuffer result = new StringBuffer("");
		result.append("{\"result\":[");
		ChatDAO chatDAO = new ChatDAO();
		ArrayList<Chat> chatList = chatDAO.getChatListByRecent(chatID);
		for(int i = 0; i < chatList.size(); i++) {
			result.append("[{\"value\":\"" + chatList.get(i).getChatName() + "\"},");
			result.append("{\"value\":\"" + chatList.get(i).getChatContent() + "\"},");
			result.append("{\"value\":\"" + chatList.get(i).getChatTime() + "\"}]");
			if(i != chatList.size() - 1) result.append(",");
		}
		result.append("], \"last\":\"" + chatList.get(chatList.size() -1).getChatID() + "\"}");
		return result.toString();
				
	}
	
	
}