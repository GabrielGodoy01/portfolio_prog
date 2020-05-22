package br.com.alura.java;

public class TestaValores {
    public static void main(String[] args) {
        Conta conta = new Conta(1337, 24335);

        System.out.println(conta.getAgencia());

        Conta conta2 = new Conta(1337,24335);

        System.out.println(Conta.getTotal());
    }
}
