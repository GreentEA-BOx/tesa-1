package tesa.qna.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import tesa.qna.bean.Chat;

public class ChatDAO {

	private Connection conn;
	
	public ChatDAO() {
		try {
		String url = "jdbc:oracle:thin:@localhost:1521:orcl";
		String uid = "hr";
		String pwd = "hr";
		Class.forName("oracle.jdbc.driver.OracleDriver");
		conn = DriverManager.getConnection(url, uid, pwd);		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public ArrayList<Chat> getChatList(String systimestamp){
		System.out.println("conn>"+conn);
		ArrayList<Chat> chatList = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "SELECT * FROM CHAT WHERE chatTime > ? ORDER BY chatTime";
		
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, systimestamp);
			rs = pstmt.executeQuery();
			chatList = new ArrayList<Chat>();
			while(rs.next()) {
				Chat chat = new Chat();
				chat.setChatID(rs.getInt("chatID"));
				chat.setChatName(rs.getString("chatName"));
				chat.setChatContent(rs.getString("chatContent").replaceAll(" ","&nbsp;").replaceAll(" ","&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>"));
				System.out.println(rs.getString("chatTime"));
				int chatTime = Integer.parseInt(rs.getString("chatTime").substring(11, 13));
				String timeType = "오전";
				if(Integer.parseInt(rs.getString("chatTime").substring(11, 13)) >= 12) {
				timeType = "오후";
					chatTime -= 12;
				}
				chat.setChatTime(rs.getString("chatTime").substring(0, 11) + " " + timeType + " " + chatTime + ":" + rs.getString("chatTime").substring(14, 16) + "");
				chatList.add(chat);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return chatList;
	}
	
	public ArrayList<Chat> getChatListByRecent(int number){
		ArrayList<Chat> chatList = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "SELECT * FROM CHAT WHERE chatID > (SELECT MAX(chatID) - ? FROM CHAT) ORDER BY chatTime";
		
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, number);
			rs = pstmt.executeQuery();
			chatList = new ArrayList<Chat>();
			while(rs.next()) {
				Chat chat = new Chat();
				chat.setChatID(rs.getInt("chatID"));
				chat.setChatName(rs.getString("chatName"));
				chat.setChatContent(rs.getString("chatContent").replaceAll(" ","&nbsp;").replaceAll(" ","&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>"));
				System.out.println(rs.getString("chatTime"));
				int chatTime = Integer.parseInt(rs.getString("chatTime").substring(11, 13));
				String timeType = "오전";
				if(Integer.parseInt(rs.getString("chatTime").substring(11, 13)) >= 12) {
				timeType = "오후";
					chatTime -= 12;
				}
				chat.setChatTime(rs.getString("chatTime").substring(0, 11) + " " + timeType + " " + chatTime + ":" + rs.getString("chatTime").substring(14, 16) + "");
				chatList.add(chat);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return chatList;
	}
	
	public ArrayList<Chat> getChatListByRecent(String chatID){
		System.out.println("chatID>>"+chatID);
		ArrayList<Chat> chatList = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "SELECT * FROM CHAT WHERE chatID > ? ORDER BY chatTime";
		
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, Integer.parseInt(chatID));
			rs = pstmt.executeQuery();
			chatList = new ArrayList<Chat>();
			while(rs.next()) {
				Chat chat = new Chat();
				chat.setChatID(rs.getInt("chatID"));
				chat.setChatName(rs.getString("chatName"));
				chat.setChatContent(rs.getString("chatContent").replaceAll(" ","&nbsp;").replaceAll(" ","&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>"));
				System.out.println(rs.getString("chatTime"));
				int chatTime = Integer.parseInt(rs.getString("chatTime").substring(11, 13));
				String timeType = "오전";
				if(Integer.parseInt(rs.getString("chatTime").substring(11, 13)) >= 12) {
				timeType = "오후";
					chatTime -= 12;
				}
				chat.setChatTime(rs.getString("chatTime").substring(0, 11) + " " + timeType + " " + chatTime + ":" + rs.getString("chatTime").substring(14, 16) + "");
				chatList.add(chat);
			}
			System.out.println("chatList>"+chatList);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return chatList;
	}
	
	public int submit (String chatName, String chatContent){
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String SQL = "INSERT INTO CHAT(CHATID,CHATNAME,CHATCONTENT,CHATTIME) VALUES(CHATID.NEXTVAL,?,?,systimestamp)";
		
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, chatName);
			pstmt.setString(2, chatContent);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs != null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return -1;
	}
	
}
