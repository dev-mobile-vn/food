final class Environment {
  static const baseUrl = String.fromEnvironment('BASE_URL');

  static const apiKeyAndroid = String.fromEnvironment('ApiKeyAndroid');
  static const appIdAndroid = String.fromEnvironment('AppIdAndroid');
  static const messagingSenderIdAndroid = String.fromEnvironment('MessagingSenderIdAndroid');
  static const projectIdAndroid = String.fromEnvironment('ProjectIdAndroid');
  static const storageBucketAndroid = String.fromEnvironment('StorageBucketAndroid');

  static const apiKeyIos = String.fromEnvironment('ApiKeyIos');
  static const appIdIos = String.fromEnvironment('AppIdIos');
  static const messagingSenderIdIos = String.fromEnvironment('MessagingSenderIdIos');
  static const projectIdIos = String.fromEnvironment('ProjectIdIos');
  static const storageBucketIos = String.fromEnvironment('StorageBucketIos');
}
