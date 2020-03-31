const developmentEnvironment = {
  'apiBaseUrl': "http://192.168.1.105:5000",
};

const productionEnvironment = {
  'apiBaseUrl': "http://api.marketlab.com",
};

const bool isProduction = bool.fromEnvironment('dart.vm.product');

const environment = isProduction ? productionEnvironment : developmentEnvironment;
