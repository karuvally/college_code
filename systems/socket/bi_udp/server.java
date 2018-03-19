// import serious stuff
import java.net.*;

public class server
{
    public static void main(String[] args) throws Exception
    {
        // create the socket
        DatagramSocket server = new DatagramSocket(3000);
        
        // create a buffer
        byte[] buffer = new byte[1024];
        
        // receive packet
        DatagramPacket packet = new DatagramPacket(buffer, 1024);
        server.receive(packet);
        
        // display the string
        String dataIn = new String(packet.getData(), 0, packet.getLength());
        System.out.println(dataIn);
        
        // close the connection
        server.close();
    }
}
