package br.com.alura.algoritmos;

public class TestaMenorPreco {

    public static void main(String[] args) {

        Produto produtos[] = new Produto[5];

//        Produto[] produto = {new Produto("Lamborghini", 1000000),
//                new Produto("Jipe", 46000),
//                new Produto("Brasília", 16000),
//                new  Produto("Smart", 46000),
//                new Produto("Fusca", 13.000)};


        produtos[0] = new Produto("Lamborghini", 1000000);
        produtos[1] = new Produto("Jipe", 46000);
        produtos[2] = new Produto("Brasília", 16000);
        produtos[3] = new Produto("Smart", 46000);
        produtos[4] = new Produto("Fusca", 17000);


        int maisBarato = buscaMenor(produtos,0, 4);

        System.out.println(maisBarato);
    }

    private static int buscaMenor(Produto[] produtos,int inicio, int termino) {
        int maisBarato = 0;
        for(int atual = inicio; atual < termino; atual++) {
            if(produtos[atual].getPreco() < produtos[maisBarato].getPreco()) {
                maisBarato = atual;
            }
        }
        return maisBarato;
    }
}
