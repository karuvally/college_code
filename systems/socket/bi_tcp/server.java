// get the serious stuff
import java.io.*;
import java.net.*;

public class server
{
    public static void main(String[] args)
    {
        try
        {
            // create server socket
            ServerSocket server = new ServerSocket(1234);
            
            // establish connection
            Socket connection = server.accept();
            
            // read data
            DataInputStream dataInput = new DataInputStream(connection.getInputStream());
            String readData = (String)dataInput.readUTF();
            
            // print read data
            System.out.println(readData);
            
            // write data
            DataOutputStream dataOut = new DataOutputStream(connection.getOutputStream());
            dataOut.writeUTF("Hi Client...");
            dataOut.flush();
            
            // close connection
            connection.close();
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }
}
