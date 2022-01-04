Stream<int> boatStream() async* {
  for (int i = 1; i <= 5; i++) {
    print('Sent boat no.' + i.toString());
    await Future.delayed(const Duration(seconds: 2));
    yield i;
    //!yield doesnot terminate the function but return terminate the function and yield returns the value of stream one at a time.
    //! async* alz return the stream.
  }
}

void main(List<String> args) async {
  Stream<int> stream = boatStream();
  stream.listen((receivedData) {
    print('Received boat no.' + receivedData.toString());
  });
}
