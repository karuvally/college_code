// get the serious stuff
import java.io.*;
import java.net.*;

public class TCPClient
{
    public static void main(String[] args)
    {
        try
        {
            // create server socket
            Socket server = new Socket("localhost", 1234);
            DataOutputStream dataOut = new DataOutputStream(server.getOutputStream());
            
            // write to the server
            dataOut.writeUTF("Hello Server :D");
            
            // flush the caches
            dataOut.flush();
            
            // read reply from server
            DataInputStream dataIn = new DataInputStream(server.getInputStream());
            String readData = (String)dataIn.readUTF();
            
            // print read data
            System.out.println(readData);
            
            // close the stream
            dataOut.close();
            
            // close the socket
            server.close();
        }

        catch(Exception e)
        {
            // print the exception
            System.out.println(e);
        }
    }
}
