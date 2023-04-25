class Folder implements File {
  @override
  String name;
  List<File> files = [];

  void renameFile(String newName) {
    name = newName;
  }

  void addFile(File file) {
    files.add(file);
  }

  void removeFile(String name) {
    files.removeWhere((element) => element.name == this.name);
  }

  @override
  String toString() {
    List<File> orderedFiles = files;
    orderedFiles.sort((a, b) => a.name.compareTo(b.name));
    String stringValue = name;
    stringValue = '$stringValue\n<';
    for (var file in orderedFiles) {
      stringValue = '$stringValue${file.toString()}, ';
    }
    stringValue = '$stringValue>';
    return stringValue;
  }

  Folder(this.name);
}

class File {
  String name;

  File(this.name);

  @override
  String toString() {
    return name;
  }
}
