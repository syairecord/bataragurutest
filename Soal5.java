import java.util.Scanner;

public class Soal5 {
    public static void main(String[] args) {
 
        Scanner input = new Scanner(System.in);
        System.out.print("Uang Budi : ");
        double jumlah = input.nextDouble();
 
        
        int seratusRibu = (int)(jumlah / 100000);
        int sisa = (int)(jumlah % 100000);
        
        int limaPuluhRibu = (sisa / 50000);
        sisa = sisa % 50000;

        int duaPuluhRibu = (sisa / 20000);
        sisa = sisa % 20000;

        int limaRibu = (sisa / 5000);
        sisa = sisa % 5000;
        
        int seribu = (sisa / 1000);
        sisa = sisa % 1000;
        
        int limaPuluh = sisa / 50;

        System.out.println("jumlah Rp 100.000 = "+ seratusRibu);
        System.out.println("jumlah Rp 50.000 = "+ limaPuluhRibu);
        System.out.println("jumlah Rp 20.000 = "+ duaPuluhRibu);
        System.out.println("jumlah Rp 5.000 = "+ limaRibu);
        System.out.println("jumlah Rp 1.000 = "+ seribu);
        System.out.println("jumlah Rp 50 = "+ limaPuluh);
    }
}