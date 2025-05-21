import 'package:app/lib.dart';

Component defs(
  List<Component> children, {
  Key? key,
  String? id,
  String? classes,
  Styles? styles,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
}) {
  return DomComponent(
    tag: 'defs',
    key: key,
    id: id,
    classes: classes,
    styles: styles,
    attributes: attributes,
    events: events,
    children: children,
  );
}

Component pattern(
  List<Component> children, {
  Key? key,
  String? id,
  String? classes,
  Styles? styles,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
}) {
  return DomComponent(
    tag: 'pattern',
    key: key,
    id: id,
    classes: classes,
    styles: styles,
    attributes: attributes,
    events: events,
    children: children,
  );
}

Component dl(
  List<Component> children, {
  Key? key,
  String? id,
  String? classes,
  Styles? styles,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
}) {
  return DomComponent(
    tag: 'dl',
    key: key,
    id: id,
    classes: classes,
    styles: styles,
    attributes: attributes,
    events: events,
    children: children,
  );
}

Component dt(
  List<Component> children, {
  Key? key,
  String? id,
  String? classes,
  Styles? styles,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
}) {
  return DomComponent(
    tag: 'dt',
    key: key,
    id: id,
    classes: classes,
    styles: styles,
    attributes: attributes,
    events: events,
    children: children,
  );
}

Component dd(
  List<Component> children, {
  Key? key,
  String? id,
  String? classes,
  Styles? styles,
  Map<String, String>? attributes,
  Map<String, EventCallback>? events,
}) {
  return DomComponent(
    tag: 'dd',
    key: key,
    id: id,
    classes: classes,
    styles: styles,
    attributes: attributes,
    events: events,
    children: children,
  );
}
