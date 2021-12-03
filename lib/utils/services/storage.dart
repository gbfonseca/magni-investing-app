abstract class IStorage {
  setData(String key, String value);
  Future<String>? getData(String key);
}
