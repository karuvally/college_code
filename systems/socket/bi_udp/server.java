// import serious stuff
import java.net.*;

public class server
{
    public static void main(String[] args) throws Exception
    {
        // create the socket
        DatagramSocket server_socket = new DatagramSocket(3000);
        
        // create a buffer
        byte[] buffer = new byte[1024];
        
        // receive packet
        DatagramPacket packet = new DatagramPacket(buffer, 1024);
        server_socket.receive(packet);
        
        // display the string
        String dataIn = new String(packet.getData(), 0, packet.getLength());
        System.out.println(dataIn);
        
        // set the client address
        InetAddress address = InetAddress.getByName("127.0.0.1");
        
        // send the reply
        String reply_string = "Copy that";
        
        InetAddress reply_address = packet.getAddress();
        int port = packet.getPort();

        DatagramPacket reply_packet = new DatagramPacket(reply_string.getBytes(),
        reply_string.length(), reply_address, port);
        
        server_socket.send(reply_packet);
                
        // close the connection
        server_socket.close();
    }
}
