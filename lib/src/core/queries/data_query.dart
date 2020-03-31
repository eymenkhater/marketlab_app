import 'package:marketlab_app/src/core/queries/primitives/filtering_query.dart';
import 'package:marketlab_app/src/core/queries/primitives/paging_query.dart';
import 'package:marketlab_app/src/core/queries/primitives/searching_query.dart';
import 'package:marketlab_app/src/core/queries/primitives/sorting_query.dart';

class DataQuery {
  DataQuery({this.paging, this.searching, this.filtering, this.sorting});
  PagingQuery paging;
  List<SearchingQuery> searching;
  List<FilteringQuery> filtering;
  SortingQuery sorting;

  factory DataQuery.fromJson(Map<String, dynamic> json) => DataQuery(
        paging: json["paging"] == null ? null : PagingQuery.fromJson(json["paging"]),
        searching: json["searching"] == null ? null : List<SearchingQuery>.from(json["searching"].map((x) => SearchingQuery.fromJson(x))),
        filtering: json["filtering"] == null ? null : List<FilteringQuery>.from(json["filtering"].map((x) => FilteringQuery.fromJson(x))),
        sorting: json["sorting"] == null ? null : SortingQuery.fromJson(json["sorting"]),
      );

  Map<String, dynamic> toJson() => {
        "paging": paging == null ? null : paging.toJson(),
        "searching": searching == null ? null : List<dynamic>.from(searching.map((x) => x.toJson())),
        "filtering": filtering == null ? null : List<dynamic>.from(filtering.map((x) => x.toJson())),
        "sorting": sorting == null ? null : sorting.toJson(),
      };
}
