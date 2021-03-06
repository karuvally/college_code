// import the serious stuff
import java.net.*;

public class client
{
    public static void main(String[] args) throws Exception
    {
        // create a UDP socket
        DatagramSocket client = new DatagramSocket();
        
        // declare string to be sent
        String outputString = "This works, folks!";
        
        // set target IP
        InetAddress address = InetAddress.getByName("127.0.0.1");
        
        // create packet, 3000 being server's port
        DatagramPacket packet = new DatagramPacket(outputString.getBytes(),
        outputString.length(), address, 3000);
        
        // send the packet
        client.send(packet);
        
        // get the response
        byte [] buffer = new byte[1024];
        DatagramPacket receive_packet = new DatagramPacket(buffer, 1024);
        client.receive(receive_packet);
        String reply = new String(receive_packet.getData(), 0, receive_packet.getLength());
        System.out.println(reply);
        
        // close the connection
    }
}
