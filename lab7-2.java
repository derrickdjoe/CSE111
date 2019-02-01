import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

public class lab7 {

	public static Connection conn = null;
	public static Statement stat;
	public static Scanner input = new Scanner(System.in);
	public static int whatpart = 999;


	public static void main(String[] args) throws SQLException {
	while(whatpart != 000000000){
		System.out.println("Enter 1 for Start DB, 2 for Create Table, 3 for Input date, 4 for Query 1, 5 for Query 2, 6 for Query 3, 7 for Query 4, 8 for Query 5, 9 for Query 6, 10 for close connection");

	whatpart = input.nextInt();
	if(whatpart == 1){
	
		part1();

	}
else if(whatpart == 2){

		part2();

	}
	else if(whatpart == 3){
			
		part3();

	}else if(whatpart == 4){

		part4();

	}else if(whatpart == 5){

		part5();

	}else if(whatpart == 6){

		part6();

	}else if(whatpart == 7){

		part7();

	}else if(whatpart == 8){

		part8();

	}else if(whatpart == 9){

		part9();

	}else if(whatpart == 10){

		part10();

}
	}
}

	public static void part1(){
		try {
			//1
			conn = DriverManager.getConnection("jdbc:sqlite:/home/user/Documents/TPCH.db");
			Statement stat = conn.createStatement();
			//stat.executeUpdate("DROP TABLE IF EXISTS warehouse");

		}catch(SQLException e) {

			System.err.println(e.getMessage());

		}

	}

	public static void part2() throws SQLException{
			Statement stat = conn.createStatement();
			stat.executeUpdate("DROP TABLE IF EXISTS warehouse");
			String toinput = ("CREATE TABLE warehouse (w_warehousekey DECIMAL(3,0) NOT NULL, w_name CHAR(25) NOT NULL, w_supplierkey DECIMAL(2,0) NOT NULL, w_capacity DECIMAL(6,2) NOT NULL, w_address VARCHAR(40) NOT NULL, w_nationkey DECIMAL(2,0) NOT NULL);");
			PreparedStatement stats = conn.prepareStatement(toinput);
			stats.executeUpdate();
		}

	public static void part3() throws SQLException{

		Statement stat = conn.createStatement();
		System.out.println("Input ammount");
		int a = input.nextInt();

		for(int i = 0; i <= a - 1; i++){

			System.out.println("ALL STRINGS MUST BE ENTERED WITH \" \" AROUND THEM");
			System.out.println("Warehouse name? STRING");
			String warname = input.next();

			System.out.println("Supplier name? STRING");
			String suppholder = input.next();
			ResultSet gotsupp = stat.executeQuery("SELECT * FROM supplier WHERE s_name = " + suppholder + ";");

			while(gotsupp.next() == false){
				System.out.println("Invalid key");
				System.out.println("Supplier name? STRING");
				suppholder = input.next();
				gotsupp = stat.executeQuery("SELECT * FROM supplier WHERE s_name = " + suppholder + ";");

			}

			int insuppholder = gotsupp.getInt("s_suppkey");
			gotsupp.close();

			System.out.println("Capacity? INT");
			int warcap = input.nextInt();

			System.out.println("Address? STRING");
			String warad = input.next();

			System.out.println("Nation name? STRING");
			String nationholder = input.next();
			ResultSet gotnation = stat.executeQuery("SELECT * FROM nation WHERE n_name = " + nationholder + ";");

			while(gotnation.next() == false){
				System.out.println("Invalid key");
				System.out.println("Nation name? STRING");
				nationholder = input.next();
				gotnation = stat.executeQuery("SELECT * FROM nation WHERE n_name = " + nationholder + ";");
			}

			int innatholder = gotnation.getInt("n_nationkey");
			gotnation.close();

			System.out.println(innatholder);
			stat.executeUpdate("INSERT INTO warehouse VALUES(" + (i + 1) + "," + warname + "," + insuppholder + "," + warcap + "," + warad + "," + innatholder + ");");

		}

		//test 2
		/*ResultSet gotem = stat.executeQuery("SELECT * FROM warehouse;");

		while(gotem.next()){

			System.out.println("Name: " + gotem.getString("w_name"));
			System.out.println("Supplier" + gotem.getInt("w_supplierkey"));
			System.out.println("Capacity: " + gotem.getInt("w_capacity"));
			System.out.println("Address: " + gotem.getString("w_address"));
			System.out.println("Nation: " + gotem.getInt("w_nationkey"));


		}

		gotem.close();*/

	}

	public static void part4() throws SQLException{
		//query 1
		Statement stat = conn.createStatement();
		ResultSet q1 = stat.executeQuery("SELECT s_name FROM (SELECT w_supplierkey, COUNT(w_name) AS counter FROM warehouse GROUP BY w_supplierkey), supplier WHERE counter IN(SELECT min(counter) FROM(SELECT w_supplierkey, COUNT(w_name) AS counter FROM warehouse GROUP BY w_supplierkey)) AND s_suppkey = w_supplierkey;");

		while(q1.next()){

			System.out.println("Name: " + q1.getString("s_name"));

		}

		q1.close();

	}

	public static void part5() throws SQLException{

		//query 2		
		Statement stat = conn.createStatement();
		ResultSet q3 = stat.executeQuery("SELECT w_name FROM warehouse WHERE w_capacity = (SELECT MAX(w_capacity) FROM warehouse);");

		while(q3.next()){

			System.out.println("Name: " + q3.getString("w_name"));

		}

		q3.close();
	}

	public static void part6() throws SQLException{

		//query 3
		Statement stat = conn.createStatement();

		System.out.println("Enter max cap for EUROPE");
		int capx = input.nextInt();
		ResultSet q4 = stat.executeQuery("SELECT w_name FROM warehouse, nation WHERE w_nationkey = n_nationkey AND n_regionkey = r_regionkey AND r_name == 'EUROPE' AND w_cap < " + capx + ";");

		while(q4.next()){

			System.out.println("Name: " + q4.getString("w_name"));

		}
	}

	public static void part7() throws SQLException{

		//query 4
		Statement stat = conn.createStatement();

		int capcount = 0; 
		int partcount = 0;
		System.out.println("Enter supplier name");
		String q4suppname = input.next();
		ResultSet q4r1 = stat.executeQuery("SELECT w_capacity FROM supplier, warehouse WHERE s_suppkey = w_supplierkey AND s_name = " + q4suppname + ";");

		while(q4r1.next()){

			capcount += q4r1.getInt("w_capacity");

		}

		ResultSet q4r2 = stat.executeQuery("SELECT ps_availqty FROM partsupp, supplier WHERE s_suppkey = ps_suppkey AND s_name = " + q4suppname + ";");

		while(q4r1.next()){

			partcount += q4r1.getInt("ps_availqty");

		}

		if(capcount >= partcount){

			System.out.print("Can fit");

		}else{

			System.out.print("Can not fit");

		}

		q4r1.close();
		q4r2.close();
	}

	//query 5
	public static void part8() throws SQLException{
		Statement stat = conn.createStatement();

		System.out.print("Enter nation");
		String q5nat = input.next();

		ResultSet q5 = stat.executeQuery("SELECT w_name, w_capacity FROM warehouse, nation WHERE w_nationkey = n_nationkey AND n_name = " + q5nat + " ORDER BY w_capacity DESC;");

		while(q5.next()){

			System.out.println("Name: " + q5.getString("w_name"));
			System.out.println("Capacity: " + q5.getInt("w_capacity"));

		}

		q5.close();
	}

	public static void part9() throws SQLException{
		//query 6
		Statement stat = conn.createStatement();
		System.out.print("Name the current supplier");
		String currsupp = input.next();
		System.out.print("Name the new supplier");
		String newsupp = input.next();

		ResultSet newgotsupp = stat.executeQuery("SELECT * FROM supplier WHERE s_name = " + currsupp + ";");
		int currsuppkey = newgotsupp.getInt("s_suppkey");
		ResultSet newgotsupp1 = stat.executeQuery("SELECT * FROM supplier WHERE s_name = " + newsupp + ";");
		int newsuppkey = newgotsupp1.getInt("s_suppkey");
		stat.executeUpdate("UPDATE warehouse SET w_supplierkey = " + currsuppkey + " WHERE w_supplierky = " + newsuppkey + ";");

		newgotsupp.close();
		newgotsupp1.close();

		//5
	}

	public static void part10() throws SQLException{
		conn.close();

	}
}
