// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MovieStore on _MovieStoreBase, Store {
  late final _$allPopularAtom =
      Atom(name: '_MovieStoreBase.allPopular', context: context);

  @override
  ObservableList<Result> get allPopular {
    _$allPopularAtom.reportRead();
    return super.allPopular;
  }

  @override
  set allPopular(ObservableList<Result> value) {
    _$allPopularAtom.reportWrite(value, super.allPopular, () {
      super.allPopular = value;
    });
  }

  late final _$allSimilarAtom =
      Atom(name: '_MovieStoreBase.allSimilar', context: context);

  @override
  ObservableList<Result> get allSimilar {
    _$allSimilarAtom.reportRead();
    return super.allSimilar;
  }

  @override
  set allSimilar(ObservableList<Result> value) {
    _$allSimilarAtom.reportWrite(value, super.allSimilar, () {
      super.allSimilar = value;
    });
  }

  late final _$allCastAtom =
      Atom(name: '_MovieStoreBase.allCast', context: context);

  @override
  ObservableList<Cast> get allCast {
    _$allCastAtom.reportRead();
    return super.allCast;
  }

  @override
  set allCast(ObservableList<Cast> value) {
    _$allCastAtom.reportWrite(value, super.allCast, () {
      super.allCast = value;
    });
  }

  late final _$movieDetailsAtom =
      Atom(name: '_MovieStoreBase.movieDetails', context: context);

  @override
  ObservableList<MovieDetailModel> get movieDetails {
    _$movieDetailsAtom.reportRead();
    return super.movieDetails;
  }

  @override
  set movieDetails(ObservableList<MovieDetailModel> value) {
    _$movieDetailsAtom.reportWrite(value, super.movieDetails, () {
      super.movieDetails = value;
    });
  }

  late final _$videoKeysAtom =
      Atom(name: '_MovieStoreBase.videoKeys', context: context);

  @override
  ObservableList<String> get videoKeys {
    _$videoKeysAtom.reportRead();
    return super.videoKeys;
  }

  @override
  set videoKeys(ObservableList<String> value) {
    _$videoKeysAtom.reportWrite(value, super.videoKeys, () {
      super.videoKeys = value;
    });
  }

  late final _$addMoviesAsyncAction =
      AsyncAction('_MovieStoreBase.addMovies', context: context);

  @override
  Future addMovies(MovieModel m) {
    return _$addMoviesAsyncAction.run(() => super.addMovies(m));
  }

  late final _$fetchPopularAsyncAction =
      AsyncAction('_MovieStoreBase.fetchPopular', context: context);

  @override
  Future fetchPopular() {
    return _$fetchPopularAsyncAction.run(() => super.fetchPopular());
  }

  late final _$fetchDetailMovieAsyncAction =
      AsyncAction('_MovieStoreBase.fetchDetailMovie', context: context);

  @override
  Future fetchDetailMovie(int id) {
    return _$fetchDetailMovieAsyncAction.run(() => super.fetchDetailMovie(id));
  }

  late final _$fetchYoutubeVideoAsyncAction =
      AsyncAction('_MovieStoreBase.fetchYoutubeVideo', context: context);

  @override
  Future fetchYoutubeVideo(int id) {
    return _$fetchYoutubeVideoAsyncAction
        .run(() => super.fetchYoutubeVideo(id));
  }

  late final _$addSimilarMoviesAsyncAction =
      AsyncAction('_MovieStoreBase.addSimilarMovies', context: context);

  @override
  Future addSimilarMovies(MovieModel m) {
    return _$addSimilarMoviesAsyncAction.run(() => super.addSimilarMovies(m));
  }

  late final _$fetchSimilarMovieAsyncAction =
      AsyncAction('_MovieStoreBase.fetchSimilarMovie', context: context);

  @override
  Future fetchSimilarMovie(int movieID) {
    return _$fetchSimilarMovieAsyncAction
        .run(() => super.fetchSimilarMovie(movieID));
  }

  late final _$addMovieCastAsyncAction =
      AsyncAction('_MovieStoreBase.addMovieCast', context: context);

  @override
  Future addMovieCast(MovieCastModel m) {
    return _$addMovieCastAsyncAction.run(() => super.addMovieCast(m));
  }

  late final _$fetchMovieCastAsyncAction =
      AsyncAction('_MovieStoreBase.fetchMovieCast', context: context);

  @override
  Future fetchMovieCast(int movieID) {
    return _$fetchMovieCastAsyncAction.run(() => super.fetchMovieCast(movieID));
  }

  late final _$_MovieStoreBaseActionController =
      ActionController(name: '_MovieStoreBase', context: context);

  @override
  String getImage(String img) {
    final _$actionInfo = _$_MovieStoreBaseActionController.startAction(
        name: '_MovieStoreBase.getImage');
    try {
      return super.getImage(img);
    } finally {
      _$_MovieStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic addDetailsMovies(MovieDetailModel m) {
    final _$actionInfo = _$_MovieStoreBaseActionController.startAction(
        name: '_MovieStoreBase.addDetailsMovies');
    try {
      return super.addDetailsMovies(m);
    } finally {
      _$_MovieStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic addYoutubeVideo(MovieVideoModel m) {
    final _$actionInfo = _$_MovieStoreBaseActionController.startAction(
        name: '_MovieStoreBase.addYoutubeVideo');
    try {
      return super.addYoutubeVideo(m);
    } finally {
      _$_MovieStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
allPopular: ${allPopular},
allSimilar: ${allSimilar},
allCast: ${allCast},
movieDetails: ${movieDetails},
videoKeys: ${videoKeys}
    ''';
  }
}
