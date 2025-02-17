enum MemoFilterType { createdTime, editedTime }

extension MemoFilterTypeHelper on MemoFilterType {
  bool get isCreatedTime => this == MemoFilterType.createdTime;
  bool get isEditedTime => this == MemoFilterType.editedTime;
}
