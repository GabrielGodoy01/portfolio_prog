package br.com.alura.algoritmos;

public class TestaOrdenacao {
    public static void main (String[] args){
        Produto produtos[] = {
                new Produto("Lamborguini", 1000000),
                new Produto("Jipe", 46000),
                new Produto("Brasília", 16000),
                new Produto("Smart", 46000),
                new Produto("Fusca", 17000)
        };

        for (int atual = 0; atual < produtos.length; atual++) {
            buscaMenor(produtos)
        }

    }

    private static int buscaMenor(Produto[] produtos, int inicio, int termino) {

        int maisBarato = inicio;

        for (int atual = inicio; atual <= termino; atual++) {
            if (produtos[atual].getPreco() < produtos[maisBarato].getPreco()) {
                maisBarato = atual;
            }
        }

        return maisBarato;
    }
}
