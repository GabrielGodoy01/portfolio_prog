package br.com.alura.java;

public class TestaMetodo {
    public static void main(String[] args) {
        Conta conta = new Conta();
        conta.saldo = 100;

        conta.deposita(50);
        System.out.println(conta.saldo);

        boolean conseguiuRetirar = conta.saca(20);
        System.out.println(conta.saldo);
        System.out.println(conseguiuRetirar);

        Conta contaDaMarcela = new Conta();
        contaDaMarcela.deposita(1000);
        contaDaMarcela.transfere(300, conta);

        if(contaDaMarcela.transfere(3000, conta)){
            System.out.println("Tranferencia concluida");
        }else{
            System.out.println("Faltou dinheiro");
        }

        System.out.println("Saldo da conta:" + conta.saldo);
        System.out.println("Saldo da Marcela:" + contaDaMarcela.saldo);

        conta.titular = "Paulo Silveira";
        System.out.println(conta.titular);


    }
}
