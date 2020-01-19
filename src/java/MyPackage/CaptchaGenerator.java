
package MyPackage;

import java.util.Random;

public class CaptchaGenerator 
{
    public String createCaptcha()
    {
        String capcode="";
        char ch;
        ch=(char)rand(65,90);
        capcode=capcode+ch;
        ch=(char)rand(65,90);
        capcode=capcode+ch;
        
        ch=(char)rand(48,57);
        capcode=capcode+ch;
        ch=(char)rand(48,57);
        capcode=capcode+ch;
        
        ch=(char)rand(97,122);
        capcode=capcode+ch;
        ch=(char)rand(97,122);
        capcode=capcode+ch;
       
        return capcode;
    }
    public int rand(int min, int max)
    {
        Random r=new Random();
        int rn=r.nextInt(max-min+1)+min;
        return rn;
    }
}
