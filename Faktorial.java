import java.util.Scanner;

public class Faktorial{
    public static void main(String[]args){
        Scanner in = new Scanner(System.in);
        int faktorial = 1;
        
        System.out.print("input : ");
        int n = in.nextInt();
        if(n<=0){
            System.out.println("0");
        }else{
            for(int i=1;i<=n;i++){
                faktorial*=i;
            }
        }
        System.out.println("output : "+String.valueOf(faktorial));
    }
}
