class MyProdutos{
  var _nome;
  var _valor;
  var _quantidade;
  var _urlImg;
  var _cep;

  MyProdutos(this._nome, this._valor, this._quantidade, this._urlImg, this._cep);

  @override
  String toString() {
    return 'MyHero{_nome: $_nome, _valor: $_valor, _quantidade: $_quantidade, _urlImg: $_urlImg, _cep: $_cep}';
  }

  get quantidade => _quantidade;

  get valor => _valor;

  get nome => _nome;

  get image => _urlImg;

  get cep => _cep;

}