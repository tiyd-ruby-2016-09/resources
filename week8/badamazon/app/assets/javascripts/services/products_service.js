badamazonApp.service('products', ['$http', function($http) {
  this.getProducts = function() {
    return $http.get('/api/products');
  };
}]);
