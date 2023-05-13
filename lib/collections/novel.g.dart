// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'novel.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetNovelCollection on Isar {
  IsarCollection<Novel> get novels => this.collection();
}

const NovelSchema = CollectionSchema(
  name: r'Novel',
  id: 5475403121629904191,
  properties: {
    r'description': PropertySchema(
      id: 0,
      name: r'description',
      type: IsarType.string,
    ),
    r'novel': PropertySchema(
      id: 1,
      name: r'novel',
      type: IsarType.string,
    ),
    r'pictureDir': PropertySchema(
      id: 2,
      name: r'pictureDir',
      type: IsarType.string,
    ),
    r'title': PropertySchema(
      id: 3,
      name: r'title',
      type: IsarType.string,
    )
  },
  estimateSize: _novelEstimateSize,
  serialize: _novelSerialize,
  deserialize: _novelDeserialize,
  deserializeProp: _novelDeserializeProp,
  idName: r'novelId',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _novelGetId,
  getLinks: _novelGetLinks,
  attach: _novelAttach,
  version: '3.0.5',
);

int _novelEstimateSize(
  Novel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.description.length * 3;
  bytesCount += 3 + object.novel.length * 3;
  bytesCount += 3 + object.pictureDir.length * 3;
  bytesCount += 3 + object.title.length * 3;
  return bytesCount;
}

void _novelSerialize(
  Novel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.description);
  writer.writeString(offsets[1], object.novel);
  writer.writeString(offsets[2], object.pictureDir);
  writer.writeString(offsets[3], object.title);
}

Novel _novelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Novel();
  object.description = reader.readString(offsets[0]);
  object.novel = reader.readString(offsets[1]);
  object.novelId = id;
  object.pictureDir = reader.readString(offsets[2]);
  object.title = reader.readString(offsets[3]);
  return object;
}

P _novelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _novelGetId(Novel object) {
  return object.novelId;
}

List<IsarLinkBase<dynamic>> _novelGetLinks(Novel object) {
  return [];
}

void _novelAttach(IsarCollection<dynamic> col, Id id, Novel object) {
  object.novelId = id;
}

extension NovelQueryWhereSort on QueryBuilder<Novel, Novel, QWhere> {
  QueryBuilder<Novel, Novel, QAfterWhere> anyNovelId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension NovelQueryWhere on QueryBuilder<Novel, Novel, QWhereClause> {
  QueryBuilder<Novel, Novel, QAfterWhereClause> novelIdEqualTo(Id novelId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: novelId,
        upper: novelId,
      ));
    });
  }

  QueryBuilder<Novel, Novel, QAfterWhereClause> novelIdNotEqualTo(Id novelId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: novelId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: novelId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: novelId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: novelId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Novel, Novel, QAfterWhereClause> novelIdGreaterThan(Id novelId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: novelId, includeLower: include),
      );
    });
  }

  QueryBuilder<Novel, Novel, QAfterWhereClause> novelIdLessThan(Id novelId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: novelId, includeUpper: include),
      );
    });
  }

  QueryBuilder<Novel, Novel, QAfterWhereClause> novelIdBetween(
    Id lowerNovelId,
    Id upperNovelId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerNovelId,
        includeLower: includeLower,
        upper: upperNovelId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension NovelQueryFilter on QueryBuilder<Novel, Novel, QFilterCondition> {
  QueryBuilder<Novel, Novel, QAfterFilterCondition> descriptionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Novel, Novel, QAfterFilterCondition> descriptionGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Novel, Novel, QAfterFilterCondition> descriptionLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Novel, Novel, QAfterFilterCondition> descriptionBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Novel, Novel, QAfterFilterCondition> descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Novel, Novel, QAfterFilterCondition> descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Novel, Novel, QAfterFilterCondition> descriptionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Novel, Novel, QAfterFilterCondition> descriptionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Novel, Novel, QAfterFilterCondition> descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<Novel, Novel, QAfterFilterCondition> descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<Novel, Novel, QAfterFilterCondition> novelEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'novel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Novel, Novel, QAfterFilterCondition> novelGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'novel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Novel, Novel, QAfterFilterCondition> novelLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'novel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Novel, Novel, QAfterFilterCondition> novelBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'novel',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Novel, Novel, QAfterFilterCondition> novelStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'novel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Novel, Novel, QAfterFilterCondition> novelEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'novel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Novel, Novel, QAfterFilterCondition> novelContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'novel',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Novel, Novel, QAfterFilterCondition> novelMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'novel',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Novel, Novel, QAfterFilterCondition> novelIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'novel',
        value: '',
      ));
    });
  }

  QueryBuilder<Novel, Novel, QAfterFilterCondition> novelIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'novel',
        value: '',
      ));
    });
  }

  QueryBuilder<Novel, Novel, QAfterFilterCondition> novelIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'novelId',
        value: value,
      ));
    });
  }

  QueryBuilder<Novel, Novel, QAfterFilterCondition> novelIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'novelId',
        value: value,
      ));
    });
  }

  QueryBuilder<Novel, Novel, QAfterFilterCondition> novelIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'novelId',
        value: value,
      ));
    });
  }

  QueryBuilder<Novel, Novel, QAfterFilterCondition> novelIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'novelId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Novel, Novel, QAfterFilterCondition> pictureDirEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pictureDir',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Novel, Novel, QAfterFilterCondition> pictureDirGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'pictureDir',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Novel, Novel, QAfterFilterCondition> pictureDirLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'pictureDir',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Novel, Novel, QAfterFilterCondition> pictureDirBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'pictureDir',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Novel, Novel, QAfterFilterCondition> pictureDirStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'pictureDir',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Novel, Novel, QAfterFilterCondition> pictureDirEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'pictureDir',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Novel, Novel, QAfterFilterCondition> pictureDirContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'pictureDir',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Novel, Novel, QAfterFilterCondition> pictureDirMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'pictureDir',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Novel, Novel, QAfterFilterCondition> pictureDirIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'pictureDir',
        value: '',
      ));
    });
  }

  QueryBuilder<Novel, Novel, QAfterFilterCondition> pictureDirIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'pictureDir',
        value: '',
      ));
    });
  }

  QueryBuilder<Novel, Novel, QAfterFilterCondition> titleEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Novel, Novel, QAfterFilterCondition> titleGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Novel, Novel, QAfterFilterCondition> titleLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Novel, Novel, QAfterFilterCondition> titleBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'title',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Novel, Novel, QAfterFilterCondition> titleStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Novel, Novel, QAfterFilterCondition> titleEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Novel, Novel, QAfterFilterCondition> titleContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'title',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Novel, Novel, QAfterFilterCondition> titleMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'title',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Novel, Novel, QAfterFilterCondition> titleIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'title',
        value: '',
      ));
    });
  }

  QueryBuilder<Novel, Novel, QAfterFilterCondition> titleIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'title',
        value: '',
      ));
    });
  }
}

extension NovelQueryObject on QueryBuilder<Novel, Novel, QFilterCondition> {}

extension NovelQueryLinks on QueryBuilder<Novel, Novel, QFilterCondition> {}

extension NovelQuerySortBy on QueryBuilder<Novel, Novel, QSortBy> {
  QueryBuilder<Novel, Novel, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<Novel, Novel, QAfterSortBy> sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<Novel, Novel, QAfterSortBy> sortByNovel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'novel', Sort.asc);
    });
  }

  QueryBuilder<Novel, Novel, QAfterSortBy> sortByNovelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'novel', Sort.desc);
    });
  }

  QueryBuilder<Novel, Novel, QAfterSortBy> sortByPictureDir() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pictureDir', Sort.asc);
    });
  }

  QueryBuilder<Novel, Novel, QAfterSortBy> sortByPictureDirDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pictureDir', Sort.desc);
    });
  }

  QueryBuilder<Novel, Novel, QAfterSortBy> sortByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<Novel, Novel, QAfterSortBy> sortByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension NovelQuerySortThenBy on QueryBuilder<Novel, Novel, QSortThenBy> {
  QueryBuilder<Novel, Novel, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<Novel, Novel, QAfterSortBy> thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<Novel, Novel, QAfterSortBy> thenByNovel() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'novel', Sort.asc);
    });
  }

  QueryBuilder<Novel, Novel, QAfterSortBy> thenByNovelDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'novel', Sort.desc);
    });
  }

  QueryBuilder<Novel, Novel, QAfterSortBy> thenByNovelId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'novelId', Sort.asc);
    });
  }

  QueryBuilder<Novel, Novel, QAfterSortBy> thenByNovelIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'novelId', Sort.desc);
    });
  }

  QueryBuilder<Novel, Novel, QAfterSortBy> thenByPictureDir() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pictureDir', Sort.asc);
    });
  }

  QueryBuilder<Novel, Novel, QAfterSortBy> thenByPictureDirDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'pictureDir', Sort.desc);
    });
  }

  QueryBuilder<Novel, Novel, QAfterSortBy> thenByTitle() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.asc);
    });
  }

  QueryBuilder<Novel, Novel, QAfterSortBy> thenByTitleDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'title', Sort.desc);
    });
  }
}

extension NovelQueryWhereDistinct on QueryBuilder<Novel, Novel, QDistinct> {
  QueryBuilder<Novel, Novel, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Novel, Novel, QDistinct> distinctByNovel(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'novel', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Novel, Novel, QDistinct> distinctByPictureDir(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'pictureDir', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Novel, Novel, QDistinct> distinctByTitle(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'title', caseSensitive: caseSensitive);
    });
  }
}

extension NovelQueryProperty on QueryBuilder<Novel, Novel, QQueryProperty> {
  QueryBuilder<Novel, int, QQueryOperations> novelIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'novelId');
    });
  }

  QueryBuilder<Novel, String, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<Novel, String, QQueryOperations> novelProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'novel');
    });
  }

  QueryBuilder<Novel, String, QQueryOperations> pictureDirProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'pictureDir');
    });
  }

  QueryBuilder<Novel, String, QQueryOperations> titleProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'title');
    });
  }
}
