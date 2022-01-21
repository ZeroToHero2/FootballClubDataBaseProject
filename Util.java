/**
 * @author Bahadır
 */
package footballdatabaseproject;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Util {

    public static boolean checkpassword(String id, String password) {
        return (id.equals("postgres") && password.equals("postgres"));
    }

    public void action() {
        System.out.println("Please Choose your user type:");
        System.out.println("[M]anager");
        System.out.println("[C]oach");
        System.out.println("[T]rainer");
        System.out.println("[S]portive Director");
        System.out.println("[U]nauthorized");
        System.out.println("[E]xit");
    }

    public void CoachUI() {
        System.out.println("1)Selection for match squad: ");
        System.out.println("2)Look Transferrable Players:(can be excluded) ");
        System.out.println("3)Make decision about suggested players from Sportive Directors: ");
        System.out.println("4)Information update: ");
    }

    public void UnauthorizedUI() {
        System.out.println("1)View Players: ");
        System.out.println("2)View Current First 11: ");
        System.out.println("3)View Coaches: ");
        System.out.println("4)View Trainers: ");
        System.out.println("5)View Sportive Directors: ");
        System.out.println("6)View Manager: ");
    }

    public void ManagerUI() {
        System.out.println("1)Signed contract with a Player:");
        System.out.println("2)End contract with a Player:");
        System.out.println("3)Signed Contract with a Coach:");
        System.out.println("4)End Contract with a Coach:");
        System.out.println("5)Signed Contract with a Trainer:");
        System.out.println("6)End Contract with a Trainer:");
        System.out.println("7)Signed Contract with a Sportive Director:");
        System.out.println("8)End Contract with a Sportive Director:");
        System.out.println("9)Information update: ");
    }

    public void TrainerUI() {
        System.out.println("1)Assign a trainer to a player:");
        System.out.println("2)Change trainer of a player:");
        System.out.println("3)Information update: ");
    }

    public void SportiveDirectorUI() {
        System.out.println("1)Determine The Talented U-19 Players:"); // add and update
        //System.out.println("1)Update The Talented U-19 Players:");
        System.out.println("2)Suggest a Talented Player to Coaches:");
        System.out.println("3)Information update:");
    }

    public void threadsleep() {
        int i = 0;

        try {
            while (i < 9) {
                Thread.sleep(400);
                if (i == 0) {
                    //System.out.print(" __       __ \n/  |  _  /  |\n$$ | / \\ $$ |\n$$ |/$  \\$$ |\n$$ /$$$  $$ |\n$$ $$/$$ $$ |\n$$$$/  $$$$ |\n$$$/    $$$ |\n$$/      $$/ ");//w
                    System.out.print(" __       __            __                                                      __                      ________ _______         _______   _______   __       __   ______  \n");
                } else if (i == 1) {
                    //System.out.print("          \n  ______  \n /      \\ \n/$$$$$$  |\n$$    $$ |\n$$$$$$$$/ \n$$       |\n $$$$$$$/  ");//e
                    System.out.print("/  |  _  /  |          /  |                                                    /  |                    /        /       \\       /       \\ /       \\ /  \\     /  | /      \\ \n");
                } else if (i == 2) {
                    //System.out.print(" __ \n/  |\n$$ |\n$$ |\n$$ |\n$$ |\n$$ |\n$$ |\n$$/ ");        //l
                    System.out.print("$$ | / \\ $$ |  ______  $$ |  _______   ______   _____  ____    ______         _$$ |_     ______        $$$$$$$$/$$$$$$$  |      $$$$$$$  |$$$$$$$  |$$  \\   /$$ |/$$$$$$  |\n");
                } else if (i == 3) {
                    //System.out.print("  _______ \n /       |\n/$$$$$$$/ \n$$ |      \n$$ \\_____ \n$$       |\n $$$$$$$/ ");//c
                    System.out.print("$$ |/$  \\$$ | /      \\ $$ | /       | /      \\ /     \\/    \\  /      \\       / $$   |   /      \\       $$ |__   $$ |__$$ |      $$ |  $$ |$$ |__$$ |$$$  \\ /$$$ |$$ \\__$$/ \n");
                } else if (i == 4) {
                    //System.out.print("  ______  \n /      \\ \n/$$$$$$  |\n$$ |  $$ |\n$$ \\__$$ |\n$$    $$/ \n $$$$$$/  ");//o
                    System.out.print("$$ /$$$  $$ |/$$$$$$  |$$ |/$$$$$$$/ /$$$$$$  |$$$$$$ $$$$  |/$$$$$$  |      $$$$$$/   /$$$$$$  |      $$    |  $$    $$<       $$ |  $$ |$$    $$< $$$$  /$$$$ |$$      \\ \n");
                } else if (i == 4) {
                    System.out.println("$$ $$/$$ $$ |$$    $$ |$$ |$$ |      $$ |  $$ |$$ | $$ | $$ |$$    $$ |        $$ | __ $$ |  $$ |      $$$$$/   $$$$$$$  |      $$ |  $$ |$$$$$$$  |$$ $$ $$/$$ | $$$$$$  |");
                } else if (i == 5) {
                    //System.out.print(" _____  ____  \n/     \\/    \\ \n$$$$$$ $$$$  |\n$$ | $$ | $$ |\n$$ | $$ | $$ |\n$$ | $$ | $$ |\n$$/  $$/  $$/ \n");//m
                    System.out.print("$$ $$/$$ $$ |$$    $$ |$$ |$$ |      $$ |  $$ |$$ | $$ | $$ |$$    $$ |        $$ | __ $$ |  $$ |      $$$$$/   $$$$$$$  |      $$ |  $$ |$$$$$$$  |$$ $$ $$/$$ | $$$$$$  |\n");
                } else if (i == 6) {
                    //System.out.print("          \n  ______  \n /      \\ \n/$$$$$$  |\n$$    $$ |\n$$$$$$$$/ \n$$       |\n $$$$$$$/  ");//e
                    System.out.print("$$$$/  $$$$ |$$$$$$$$/ $$ |$$ \\_____ $$ \\__$$ |$$ | $$ | $$ |$$$$$$$$/         $$ |/  |$$ \\__$$ |      $$ |     $$ |__$$ |      $$ |__$$ |$$ |__$$ |$$ |$$$/ $$ |/  \\__$$ |\n");
                } else if (i == 7) {
                    //System.out.print("      \n      \n      \n      \n      \n      "); //boşluk
                    System.out.print("$$$/    $$$ |$$       |$$ |$$       |$$    $$/ $$ | $$ | $$ |$$       |        $$  $$/ $$    $$/       $$ |     $$    $$/       $$    $$/ $$    $$/ $$ | $/  $$ |$$    $$/ \n");
                } else if (i == 8) {
                    //System.out.print("   __     \n  /  |    \n _$$ |_   \n/ $$   |  \n$$$$$$/   \n  $$ | __ \n  $$ |/  |\n  $$  $$/ \n   $$$$/  ");//t
                    System.out.print("$$/      $$/  $$$$$$$/ $$/  $$$$$$$/  $$$$$$/  $$/  $$/  $$/  $$$$$$$/          $$$$/   $$$$$$/        $$/      $$$$$$$/        $$$$$$$/  $$$$$$$/  $$/      $$/  $$$$$$/  \n");
                } else if (i == 99) {
                    //System.out.print("  ______  \n /      \\ \n/$$$$$$  |\n$$ |  $$ |\n$$ \\__$$ |\n$$    $$/ \n $$$$$$/  ");//o
                    System.out.println("$$/      $$/  $$$$$$$/ $$/  $$$$$$$/  $$$$$$/  $$/  $$/  $$/  $$$$$$$/          $$$$/   $$$$$$/        $$/      $$$$$$$/        $$$$$$$/  $$$$$$$/  $$/      $$/  $$$$$$/  \n");
                }
                i++;
            }

        } catch (InterruptedException ex) {
            Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void enterance() {
        System.out.println("");
        System.out.println("                          -------------------\n"
                + "                                                                     \n"
                + "                                                                      \n"
                + "\n"
                + "                                                                 ,/)\n"
                + "                                                                 |_|\n"
                + "           _          _          _          _          _         ].[\n"
                + "          |.|        |.|        |.|        |.|        |.|      /~`-'~\\\n"
                + "          ]^[        ]^[        ]^[        ]^[        ]^[     (<|%  |>)\n"
                + "        /~`-'~\\    /~`-'~\\    /~`-'~\\    /~`-'~\\    /~`-'~\\    \\|___|/\n"
                + "       {<|%  |>}  {<|%  |>}  {<|%  |>}  {<|%  |>}  {<|%  |>}   {/   \\}\n"
                + "        \\|___|/    \\|___|/    \\|___|/    \\|___|/    \\|___|/    /__|__\\\n"
                + "       /\\    \\      /   \\      /   \\      /   \\      /   \\     | / \\ |\n"
                + "       |/>/|__\\    /__|__\\    /__|__\\    /__|__\\    /__|__\\    |/   \\|\n"
                + "      _|)   \\ |    | / \\ |    | / \\ |    | / \\ |    | / \\ |    {}   {}\n"
                + "     (_,|    \\)    (/   \\)    (/   \\)    (/   \\)    (/   \\)    |)   (|\n"
                + "     / \\     (|_  _|)   (|_  _|)   (|_  _|)   (|_  _|)   (|_  _||   ||_\n"
                + "  .,.\\_/,...,|,_)(_,|,.,|,_)(_,|,.,|,_)(_,|,.,|,_)(_,|,.,|,_)(_,|.,.|,_).,.0");

        System.out.println("             ________________________________________________\n"
                + "            /                                                \\\n"
                + "           |    _________________________________________     |\n"
                + "           |   |                                         |    |\n"
                + "           |   |  C:\\>FENERBAHCE DBMS SYSTEM             |    |\n"
                + "           |   |                                         |    |\n"
                + "           |   |                                         |    |\n"
                + "           |   |                                         |    |\n"
                + "           |   |                                         |    |\n"
                + "           |   |                                         |    |\n"
                + "           |   |                                         |    |\n"
                + "           |   |                                         |    |\n"
                + "           |   |                                         |    |\n"
                + "           |   |                                         |    |\n"
                + "           |   |                                         |    |\n"
                + "           |   |                                         |    |\n"
                + "           |   |_________________________________________|    |\n"
                + "           |                                                  |\n"
                + "            \\_________________________________________________/\n"
                + "                   \\___________________________________/\n"
                + "                ___________________________________________\n"
                + "             _-'    .-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.  --- `-_\n"
                + "          _-'.-.-. .---.-.-.-.-.-.-.-.-.-.-.-.-.-.-.--.  .-.-.`-_\n"
                + "       _-'.-.-.-. .---.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-`__`. .-.-.-.`-_\n"
                + "    _-'.-.-.-.-. .-----.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-----. .-.-.-.-.`-_\n"
                + " _-'.-.-.-.-.-. .---.-. .-------------------------. .-.---. .---.-.-.-.`-_\n"
                + ":-------------------------------------------------------------------------:\n"
                + "`---._.-------------------------------------------------------------._.---'");

    }

    public void positions() {
        System.out.println("[1]Goalkeeper");
        System.out.println("[2]Defence");
        System.out.println("[3]Midfielder");
        System.out.println("[4]Forward");
    }

    public void exit() {

        System.out.println(" _                \n"
                + "| |               \n"
                + "| |__  _   _  ___ \n"
                + "| '_ \\| | | |/ _ \\\n"
                + "| |_) | |_| |  __/\n"
                + "|_.__/ \\__, |\\___|\n"
                + "        __/ |     \n"
                + "       |___/      ");
    }
}
