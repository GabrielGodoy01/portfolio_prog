package br.com.alura.algoritmos;

public class TestaMerge {
    public static void main(String[] args) {
        Nota[] notasDoMauricio = {
                new Nota("andre", 4),
                new Nota("mariana", 5),
                new Nota("carlos", 8.5),
                new Nota("paulo", 9),
        };

        Nota[] notasDoAlberto = {
                new Nota("jonas", 3),
                new Nota("juliana", 6.7),
                new Nota("guilherme", 7),
                new Nota("lucia", 9.3),
                new Nota("ana", 10),
        };

        Nota[] rank = junta(notasDoMauricio, notasDoAlberto);
        for(Nota nota:rank){
            System.out.println(nota.getAluno() + " " + nota.getValor());
        }

    }

    private static Nota[] junta(Nota[] notasDoMauricio, Nota[] notasDoAlberto) {
        int total = notasDoMauricio.length + notasDoAlberto.length;
        Nota[] resultado = new Nota[total];

        int atualDoMauricio = 0;
        int atualDoAlberto = 0;
        int atual = 0;

        while(atualDoMauricio < notasDoMauricio.length &&
                atualDoAlberto < notasDoMauricio.length){
            Nota nota1 = notasDoMauricio[atualDoMauricio];
            Nota nota2 = notasDoAlberto[atualDoAlberto];
            System.out.println("Estou comparando " + nota1.getAluno() + " com " +
                    nota2.getAluno());

            if(nota1.getValor() < nota2.getValor()){
                resultado[atual] = nota1;
                atualDoMauricio++;
            }else{
                resultado[atual] = nota2;
                atualDoAlberto++;
            }
            atual++;
        }
        return resultado;
    }
}
