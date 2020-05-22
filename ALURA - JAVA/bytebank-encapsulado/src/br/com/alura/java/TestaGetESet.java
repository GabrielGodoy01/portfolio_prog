package br.com.alura.java;

public class TestaGetESet {

    public static void main(String[] args) {
        Conta conta = new Conta(110,100);

        System.out.println(conta.getNumero());

        Cliente paulo = new Cliente();

        conta.setTitular(paulo);
        paulo.setNome("Paulo Silveira");

        System.out.println(conta.getTitular().getNome());

        conta.getTitular().setProfissao("Programador");

        Cliente titularDaConta = conta.getTitular();
        titularDaConta.setProfissao("programador");

        System.out.println(titularDaConta);
        System.out.println(paulo);
        System.out.println(conta.getTitular());
    }
}
