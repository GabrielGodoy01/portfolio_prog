package br.com.alura.java;

public class TesteSacoNegativo {
    public static void main(String[] args) {
        Conta conta = new Conta();
        conta.deposita(100);
        System.out.println(conta.saldo);
        System.out.println(conta.saca(101));
        System.out.println(conta.saldo);

        conta.saldo -= 101;
        System.out.println(conta.saldo);
    }

}
