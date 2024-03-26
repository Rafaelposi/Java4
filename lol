import java.util.Scanner;

public class CampeonatoLOL {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        int killsTotal = 0;
        int deathsTotal = 0;
        int assistsTotal = 0;
        boolean haVencedor = false;

        while (!haVencedor) {
            System.out.println("Digite o número de kills da rodada:");
            int killsRodada = scanner.nextInt();
            System.out.println("Digite o número de deaths da rodada:");
            int deathsRodada = scanner.nextInt();
            System.out.println("Digite o número de assists da rodada:");
            int assistsRodada = scanner.nextInt();

            killsTotal += killsRodada;
            deathsTotal += deathsRodada;
            assistsTotal += assistsRodada;

            if (killsTotal <= 5) {
                System.out.println("noob");
            } else if (killsTotal >= 20) {
                System.out.println("master");
            }

            if (deathsTotal >= 20) {
                System.out.println("Houston, we have a problem");
            }

            if (assistsTotal >= 20) {
                System.out.println("team work");
            }

            System.out.println("Há um vencedor? (true/false)");
            haVencedor = scanner.nextBoolean();
        }

        scanner.close();
    }
}
