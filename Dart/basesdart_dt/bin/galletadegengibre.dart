class galletaDeGengibre {
  String? _name;
  int? _edad;
  String? tipoGalleta;
  bool? sabeDarVolteretas;

  String? get name => this._name;

  set name(String? value) => _name = value;

  get edad => _edad;

  set edad(value) => _edad = value;

  get getTipoGalleta => tipoGalleta;

  set setTipoGalleta(tipoGalleta) => this.tipoGalleta = tipoGalleta;

  get getSabeDarVolteretas => sabeDarVolteretas;

  set setSabeDarVolteretas(sabeDarVolteretas) =>
      this.sabeDarVolteretas = sabeDarVolteretas;

  galletaDeGengibre(this._name, this._edad);

  galletaDeGengibre.avanzada(this._name, this._edad,
      {this.tipoGalleta, this.sabeDarVolteretas});

  galletaDeGengibre.semiAvanzado(this._name, this._edad,
      {this.tipoGalleta, this.sabeDarVolteretas});

  void nacer() {
    print('¿Estoy vivo?');
  }

  void dormir() {
    print('zzzzzzz');
  }

  bool aprenderVoltereta() {
    if (_edad! > 20) {
      sabeDarVolteretas == true;
      return true;
    } else {
      sabeDarVolteretas == false;
      return false;
    }
  }
}
