package br.alura;

public class TesteFuncionario {
    public static void main(String[] args) {
        Funcionario funcionario = new Funcionario();
        funcionario.setNome("Gabriel Godoy");
        funcionario.setCpf("12212211221");
        funcionario.setSalario(20000);

        System.out.println(funcionario.getNome());
    }
}
